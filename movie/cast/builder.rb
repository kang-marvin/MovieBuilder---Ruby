module Movie
  module Casts

    class Builder

      def initialize(params)
        @cast = Cast.new
        @cast.full_name  = params[:full_name]
        @cast.character  = params[:character]
        @cast.image = params[:image]
        @cast.quote = params[:quote]
        @cast.interviews = params[:interviews]
      end

      def test_values
        p @cast.full_name
        p @cast.character
        p @cast.quote
      end

    end

    class Cast
      attr_accessor :full_name, :character, :image, :quote, :interviews
      def initialize; end
    end

  end
end