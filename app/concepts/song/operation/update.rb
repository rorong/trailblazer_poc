module Song::Operation
    class Update < Trailblazer::Operation
      step Model(Song, :find_by)
      step Contract::Build(constant: Song::Contract::Update)
      step Contract::Validate(key: :song)
      step Contract::Persist()
    end
end
