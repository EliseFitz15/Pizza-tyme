require 'rails_helper'

# Acceptence Criteria
 # [ ] visit the index and see a list of pizza teams to join
 # [ ] join pizza team and claim slices

feature "As a user
I want to view a list of Pizza teams
and claims slices to join one" do
  scenario "join a pizza team successfully" do

    visit '/pizzas'

    expect(page).to have_content("Hawaiian Pizza")

    fill_in "Name", with: "Henry"
    fill_in "Slices", with: "2"

    click_button "Join"

    expect(page).to have_content("Henry claims 2 slices")
  end
end
