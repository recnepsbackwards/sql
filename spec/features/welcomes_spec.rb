require 'rails_helper'

RSpec.feature "Welcomes", type: :feature do
  context 'Going to the landing page' do
   Steps 'Being welcomed' do
     Given 'I am on the landing page' do
       visit '/'
     end
     Then 'I can see a welcome message' do
       expect(page).to have_content("Welcome to the Wildlife Tracker")
     end
   end
 end
 context 'Creating a species and saving to database' do
  Steps 'Creating a species' do
    Given 'I am on the landing page and entered a tree species' do
      visit '/'
      fill_in 'plant_name', with: 'Fir'
      click_button 'Submit'
    end
    Then 'It is saved to the database' do
      expect(page).to have_content('Plant Name')
      expect(page).to have_content('Fir')
    end
  end
end
end
