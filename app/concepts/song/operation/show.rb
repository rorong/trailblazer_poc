# app/concepts/song/operation/show.rb
module Song::Operation
    class Show < Trailblazer::Operation
      step Model(Song, :find_by)
    end
end
