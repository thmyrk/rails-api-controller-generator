module Api
  module V1
    class TagsController < ApiController
      def index
        validate_params!(TagsIndexSchema::Schema)
        tags = UseCases::Tags::Index.new(tags_index_params).call
        render_ok(TagsPresenter.new(tags).build_many)
      end

      def create
        validate_params!(TagsCreateSchema::Schema)
        UseCases::Tags::Create.new(tags_create_params).call
        render_ok
      end

      private

      def tags_index_params
        params.permit!
      end

      def tags_create_params
        params.permit(:name)
      end
    end
  end
end
