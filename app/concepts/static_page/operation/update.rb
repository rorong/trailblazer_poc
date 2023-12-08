# frozen_string_literal: true

module StaticPage::Operation
  module Operation
    class Update < Trailblazer::Operation
      step Model(StaticPage, :find_by)
      step Contract::Build(constant: StaticPage::Contract::Update)
      step Contract::Validate(key: :static_page)
      step Contract::Persist()
    end
  end
end
