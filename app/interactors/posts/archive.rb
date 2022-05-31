module Posts  
  class Archive
    include Interactor

    delegate :post, to: :context

    def call
      context.fail!(error_data: error_data) unless post.discard
    end

    private

    def error_data
      { message: "Record Not Archived" }
    end
  end
end