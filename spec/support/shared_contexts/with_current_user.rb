shared_context "with current user" do
  let(:schema_context) { { current_user: current_user } }
  let(:current_user) { create :user }
  let(:current_user_org_unit) { create :organization_unit, role.to_sym, users: [current_user] }
  let(:current_user_role) { role }

  before { create :role, role }
end
