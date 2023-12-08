# frozen_string_literal: true

# app/controllers/static_pages_controller.rb
class StaticPagesController < ApplicationController
  before_action :set_page, only: [:toggle_publish, :show]
  def new
    run StaticPage::Operation::Create
  end

  def create
    run StaticPage::Operation::Create do |_result|
      return redirect_to songs_path, notice: 'Static page created successfully.'
    end
    render :new
  end

  def edit
    run StaticPage::Operation::Update
  end

  def update
    run StaticPage::Operation::Update do |result|
      return redirect_to static_page_path(result[:model])
    end
    render :edit
  end

  def show
    # @static_page = StaticPage.find(params[:id])
  end

  def list
    @static_pages = StaticPage.all
  end

  def toggle_publish
    @static_page.update_columns(published: !@static_page.published)
    render json: { status: @static_page.published ? 'published' : 'unpublished' }
  end

  private
  def set_page
    @static_page = StaticPage.find(params[:id])
  end
end
