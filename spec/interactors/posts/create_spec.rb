require "rails_helper"

describe Posts::Create do
  include_context "with interactor"

  let(:initial_context) { { post_params: post_params } }
  let(:post_params) do
    {
      title: "Title",
      status: "draft",
      user: owner
    }
  end
  let(:owner) { create :user }

  describe ".call" do
    it_behaves_like "success interactor"
  end
end
