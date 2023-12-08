# frozen_string_literal: true

module Song::Contract
    class Update < Reform::Form
      property :title
      property :artist

      validates :title, :artist, presence: true
      # Add any other custom validations if necessary
    end
end
