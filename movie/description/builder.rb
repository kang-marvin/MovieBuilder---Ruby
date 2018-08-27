module Movie
  module Info

    class Builder

      def initialize(params)
        @description = Description.new
        @description.rating   = params[:rating]
        @description.bio      = params[:bio]
        @description.trailers = params[:trailers]
        @description.runtime  = params[:runtime]
        @description.poster   = params[:poster]
      end

      def test_values
        puts @description.rating
        puts @description.trailers
      end

    end

    class Description
      attr_accessor :rating, :bio, :trailers, :runtime, :poster
      def initialize; end
    end

  end
end