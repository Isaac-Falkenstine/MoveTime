require "rails_helper"

describe 'As a visitor' do
  it 'I can register with a new email' do

    password = "password"

    visit '/register'

    fill_in 'user[email]', with: "email@email.com"
    fill_in 'user[name]', with: "Abbie Smith"
    fill_in 'user[password]', with: password
    fill_in 'user[password_confirmation]', with: password

    click_on "Register"

    expect(User.where(name: "Abbie Smith").first.id).to be_a(Integer)
    expect(page).to have_content("Registered as Abbie Smith")
  end

  it 'I cannot register with existing email' do

    password = "password"
    user_1 = create(:user, email: "email@email.com", password: password)

    visit '/register'

    fill_in 'user[email]', with: "email@email.com"
    fill_in 'user[name]', with: "Abbie Smith"
    fill_in 'user[password]', with: password
    fill_in 'user[password_confirmation]', with: password

    click_on "Register"

    expect(page).to have_content("A account already exist with that email")
  end

  it 'I cannot register without matching password' do

    visit '/register'

    fill_in 'user[email]', with: "email@email.com"
    fill_in 'user[name]', with: "Abbie Smith"
    fill_in 'user[password]', with: "password"
    fill_in 'user[password_confirmation]', with: "pass1234"

    click_on "Register"

    expect(page).to have_content("Passwords did not match")
  end
end
