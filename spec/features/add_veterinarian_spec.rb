require 'spec_helper'
require 'rails_helper'

feature 'add veterinarian' do

  scenario 'specifying valid and required information' do
    visit new_veterinarian_path
    fill_in 'Name', with: 'Dan Fischer'
    fill_in 'Phone Number', with: '123-456-7890'
    fill_in 'Address', with: '123 Main St'
    fill_in 'City', with: 'Lincoln'
    fill_in 'State', with: 'Ne'
    fill_in 'Zip Code', with: '68506'
    click_on 'Submit'

    expect(page).to have_content('New Veterinarian Added!')
  end
end
