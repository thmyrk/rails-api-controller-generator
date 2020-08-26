module UseCases
  module Tags
    class Index
      def initialize(params)
        @params = params
      end

      def call
        Tag.all
      end
    end
  end
end
