require 'spec_helper'
require 'rails_helper'

feature 'add farrier' do

  scenario 'specifying valid and required information' do
    visit new_farrier_path
    fill_in 'Name', with: 'Vernon Johns'
    fill_in 'Phone Number', with: '123-456-7890'
    fill_in 'Address', with: '123 Main St'
    fill_in 'City', with: 'Lincoln'
    fill_in 'State', with: 'Ne'
    fill_in 'Zip Code', with: '68506'
    click_on 'Submit'

    expect(page).to have_content('New Farrier Added!')
  end
end
