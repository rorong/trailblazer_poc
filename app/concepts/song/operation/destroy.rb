module Song::Operation
    class Destroy < Trailblazer::Operation
      step Model(Song, :find_by)
      step :destroy!

      def destroy!(_ctx, model:, **)
        model.destroy
      end
    end
end
