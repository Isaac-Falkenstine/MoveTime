require "rails_helper"

describe "a user visits the dashboard page" do
  it "can enter the zipcode and get back the county" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit dashboard_path
    fill_in :search, with: "80124"
    click_on "Search"

    expect(page).to have_content "Littleton"
  end

  it "can enter the zipcode and get back some info" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit dashboard_path
    fill_in :search, with: "80124"
    click_on "Search"

    expect(page).to have_content "Living price: "
  end
end
