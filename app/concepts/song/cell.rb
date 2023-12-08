# frozen_string_literal: true

module Song
  class Cell < Cell::ViewModel
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
end
