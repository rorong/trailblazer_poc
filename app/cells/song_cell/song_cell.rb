# frozen_string_literal: true

class Song < Cell::ViewModel
  include ::Cell::Erb
  property :title
  property :artist
  # Method for the show view
  def show
    render
  end

  # Method for the index view
  def index
    render
  end

  # Method for the new view
  def new
    render
  end

  # Method for the edit view
  def edit
    render
  end
end
