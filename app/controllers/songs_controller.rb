# frozen_string_literal: true

class SongsController < ApplicationController
  def index
    run Song::Operation::Index do |result|
      @songs = result[:model]
    end
  end

  def new
    run Song::Operation::Create::Present
  end

  def create
    run Song::Operation::Create do |result|
      return redirect_to song_path(result[:model])
    end
    render :new
  end

  def show
    run Song::Operation::Show do |result|
      @song = result[:model]
    end
  end

  def edit
    run Song::Operation::Update do |result|
      @form = result[:"contract.default"]
      return if @form.present?
    end
  end

  def update
    run Song::Operation::Update do |result|
      @form = result[:"contract.default"]
      return redirect_to song_path(result[:model]), notice: 'Song successfully updated.'
    end

    render :edit
  end

  def destroy
    run Song::Operation::Destroy do |_result|
      return redirect_to songs_path, notice: 'Song was successfully deleted.'
    end
    redirect_to songs_path, alert: 'Failed to delete the song.'
  end
end
