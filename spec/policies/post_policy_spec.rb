require "rails_helper"

describe PostPolicy do
  let(:context) { { user: user } }
  let(:user) { create :user }
  let(:record) { create :post }

  describe_rule :create? do
    succeed "when user is authorized"

    failed "when user is not authorized" do
      let(:user) { nil }
    end
  end

  describe_rule :update? do
    let(:record) { create :post, user: user }

    succeed "when user is owner of record"

    failed "when user is not owner of record" do
      let(:record) { create :post }
    end
  end

  describe_rule :delete? do
    let(:record) { create :post, user: user }

    succeed "when user is owner of record"

    failed "when user is not owner of record" do
      let(:record) { create :post }
    end
  end

  describe_rule :publish? do
    let(:record) { create :post, user: user }

    succeed "when user is owner of record and post is draft"

    failed "when user is not owner and post is draft" do
      let(:record) { create :post }
    end

    failed "when user is owner and post is published" do
      let(:record) { create :post, :published, user: user }
    end

    failed "when user is not owner and post is published" do
      let(:record) { create :post, :published }
    end
  end

  describe_rule :unpublish? do
    let(:record) { create :post, user: user }

    succeed "when user is owner of record and post is published" do
      let(:record) { create :post, :published, user: user }
    end

    failed "when user is not owner and post is published" do
      let(:record) { create :post, :published }
    end

    failed "when user is owner and post is draft" do
      let(:record) { create :post, user: user }
    end

    failed "when user is not owner and post is draft" do
      let(:record) { create :post }
    end
  end
end
