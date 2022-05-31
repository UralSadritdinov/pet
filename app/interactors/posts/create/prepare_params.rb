module Posts
  class Create
    class PrepareParams
      include Interactor

      delegate :post, :post_params, to: :context

      def call
        context.post_params.merge!(prepared_attributes)
      end

      private

      def prepared_attributes
        {
          status: "draft"
        }
      end
    end
  end
end
