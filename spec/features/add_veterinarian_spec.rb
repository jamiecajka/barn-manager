require 'spec_helper'
require 'rails_helper'

feature 'admin can add a new veterinarian' do
  scenario 'admin can see link to add a new veterinarian when they login' do
    user = FactoryGirl.create(:user, email: 'test4@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test4@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'

    expect(page).to have_content('Owner Info')
  end

  scenario 'admin clicks on link Owner Info and are redireced to page with Add links' do
    user = FactoryGirl.create(:user, email: 'test6@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test6@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'

    expect(page).to have_content('Add New Veterinarian')
  end

  scenario 'admin clicks on link Add New Veterinarian and is redirected to a form' do
    user = FactoryGirl.create(:user, email: 'test4@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test4@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'
    click_on 'Add New Veterinarian'

    expect(page).to have_content('Add New Veterinarian')
  end

  scenario 'admin can add a new veterinarian' do
    user = FactoryGirl.create(:user, email: 'test4@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test4@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'
    click_on 'Add New Veterinarian'

    fill_in 'Name', with: 'John Doe'
    fill_in 'Phone Number', with: '123-456-7890'
    fill_in 'Address', with: '123 Main St'
    fill_in 'City', with: 'Lincoln'
    fill_in 'State', with: 'Ne'
    fill_in 'Zip Code', with: '68506'
    click_on 'Submit'

    expect(page).to have_content('New Veterinarian Added!')
  end
end
