module Posts  
  class Save
    include Interactor

    delegate :post, :post_params, to: :context

    before do
      context.post ||= Post.new
    end

    def call
      post.assign_attributes(post_params)

      context.fail!(error_data: error_data) unless post.save
    end

    private

    def error_data
      { message: "Record Invalid" }
    end
  end
end