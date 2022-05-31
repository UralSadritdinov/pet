require "rails_helper"

describe Posts::Update do
  include_context "with interactor"

  let(:initial_context) { { post: post, post_params: post_params } }
  let(:post) { create :post, title: "Title" }
  let(:post_params) do
    {
      title: "New title"
    }
  end

  describe ".call" do
    it_behaves_like "success interactor"
  end
end
