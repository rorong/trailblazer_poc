# app/concepts/song/operation/index.rb
module Song::Operation
    class Index < Trailblazer::Operation
      step :model!

      def model!(ctx, **)
        ctx[:model] = Song.all # Fetching all songs
      end
    end
end
