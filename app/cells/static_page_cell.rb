# frozen_string_literal: true

class StaticPageCell < Cell::ViewModel
  property :title
  property :content
  def show
    render
  end
end
