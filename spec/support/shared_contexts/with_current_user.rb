shared_context "with current user" do
  let(:schema_context) { { current_user: current_user } }
  let(:current_user) { create :user }
end
