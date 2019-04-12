require "rails_helper"

describe 'As a visitor' do
  it 'I can login if I already have a account' do

    password = "password"
    user_1 = create(:user, email: "email@email.com", password: password)

    visit '/login'

    fill_in 'session[email]', with: "email@email.com"
    fill_in 'session[password]', with: password

    click_on "Log In"

    expect(page).to have_content("Logged in as #{user_1.name}")
  end
end
