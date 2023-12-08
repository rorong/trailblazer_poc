module StaticPage::Contract
    class Create < Reform::Form
      property :title
      property :content
      property :published

      validates :title, :content, presence: true
    end
end
