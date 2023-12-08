# frozen_string_literal: true

module StaticPage::Operation
    class Create < Trailblazer::Operation
      step Model(StaticPage, :new)
      step Contract::Build(constant: StaticPage::Contract::Create)
      step Contract::Validate(key: :static_page)
      step Contract::Persist()
    end
end
