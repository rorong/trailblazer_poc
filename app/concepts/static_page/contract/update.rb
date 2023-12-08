module StaticPage
  module Contract
    class Update < Reform::Form
      property :title
      property :content
      property :published

      validates :title, :content, presence: true
    end
  end
end
