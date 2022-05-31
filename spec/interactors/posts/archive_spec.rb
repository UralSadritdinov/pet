require "rails_helper"

describe Posts::Archive do
  include_context "with interactor"

  let(:initial_context) { { post: post } }
  let(:post) { create :post }

  describe ".call" do
    it_behaves_like "success interactor"
  end
end
