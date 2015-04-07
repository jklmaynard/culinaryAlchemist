require "rails_helper"

describe "add the user process" do
  let(:user) {FactoryGirl.create(:user)}

  it "adds a new user" do
    user
    sign_up(user)
    expect(page).to have_content "You have signed up successfully."
  end

  it "logs the user in" do
    user
    sign_in(user)
    expect(page).to have_content "Signed in successfully."
  end

  it "logs the user out" do
    user
    sign_in(user)
    click_on "Log out"
    expect(page).to have_content "Signed out successfully."
  end
end
