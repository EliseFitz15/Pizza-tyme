require 'rails_helper'

# Acceptence Criteria
 # [ ] visit the new pizza form
 # [ ] create a pizza team
 # [ ] redirect to index when pizza successfull added and see it on home page

feature "As a user
I want to create a Pizza team
and see it added on the home page" do

visit 'pizzas/new'
fill_in 'Type', with: "Hawaiian"
fill_in 'Description', with: "Marinara, cheese with pineapple and ham toppings."
fill_in 'Slice count', with: "8"

click_button "Add Pizza Team"
end
