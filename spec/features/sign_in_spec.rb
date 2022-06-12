require "rails_helper"

feature "Signing in" do
  background do
    User.create(email: "user@example.com", password: "caplin")
  end

  scenario "Signing in with correct credentials" do
    visit "/users/sign_in"

    within("#email") do
      fill_in "Email", with: "user@example.com"
    end

    within("#password") do
      fill_in "Password", with: "caplin"
    end

    click_button "Sign in"
    expect(page).to have_current_path(root_path)
  end
end
