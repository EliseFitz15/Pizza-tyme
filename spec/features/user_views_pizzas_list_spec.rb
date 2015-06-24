require 'rails_helper'

# Acceptence Criteria
 # [ ] visit the index and see a list of pizza teams to join

feature "As a user
I want to create a Pizza team
and see it added on the home page" do

visit '/pizzas'

expect(page).to have_content("Hawaiian Pizza")

end
