module Movie
  module Images

    class Builder

      def initialize(params)
        @images = Image.new
        @images.poster   = params[:poster]
        @images.premiere_photos = params[:premiere_photos]
      end

      def test_values
        puts @images.poster
        puts @images.premiere_photos
      end

    end

    class Image
      attr_accessor :poster, :premiere_photos
      def initialize; end
    end
  end
end