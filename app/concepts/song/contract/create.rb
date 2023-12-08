# frozen_string_literal: true

module Song::Contract
    class Create < Reform::Form
      property :title
      property :artist

      validates :title, :artist, presence: true
    end
end
