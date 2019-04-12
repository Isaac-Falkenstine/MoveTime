require "rails_helper"

describe "a visitor visits the welcome page" do
  xit "can enter their z" do
    visit user_topic_path(@topic)
    click_on @question_1.title

    expect(page).to have_content "Saved Links"
  end
end
