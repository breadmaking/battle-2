require './app.rb'
require 'capybara/rspec'

# describe "Testing infrastructure", type: :feature do
#     it "should show 'Testing infrastructure working!'" do
#         visit '/'
#         expect(page).to have_content 'Testing infrastructure working!'
#     end
# end

describe "Enter player names", type: :feature do
    it "should allow players to enter names and see them on srceen" do
        visit '/'
        fill_in 'player_one', with: 'Marie'
        fill_in 'player_two', with: 'Tim'
        click_on 'Enter' 
        expect(page).to have_content('Player One: Marie vs Player Two: Tim')
    end
end