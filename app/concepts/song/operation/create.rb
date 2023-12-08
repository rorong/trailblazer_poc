# frozen_string_literal: true

module Song::Operation
    class Create < Trailblazer::Operation
      class Present < Trailblazer::Operation
        step Model(Song, :new)
        step Contract::Build(constant: Song::Contract::Create)
      end
      step Subprocess(Present)
      step Contract::Validate(key: :song)
      step Contract::Persist()
    end
end
