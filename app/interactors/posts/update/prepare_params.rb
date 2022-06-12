module Posts
  class Update
    class PrepareParams
      include Interactor

      delegate :post, :post_params, to: :context

      def call
        context.post_params.merge!(status: status)
      end

      private

      def status
        @status ||= post.status
      end
    end
  end
end
