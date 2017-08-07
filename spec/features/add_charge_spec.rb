require 'spec_helper'
require 'rails_helper'

feature 'admin can add a new charge' do
  scenario 'admin can see link to owner info login' do
    user = FactoryGirl.create(:user, email: 'test8@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test8@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'

    expect(page).to have_content('Owner Info')
  end

  scenario 'admin clicks on link Owner Info and are redireced to page with Add links' do
    user = FactoryGirl.create(:user, email: 'test8@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test8@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'

    expect(page).to have_content('Add New Charge')
  end

  scenario 'admin clicks on link Add New Note and is redirected to a form' do
    user = FactoryGirl.create(:user, email: 'test8@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test8@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'
    click_on 'Add New Charge'

    expect(page).to have_content('Add New Charge')
  end

  scenario 'admin can add a new charge' do
    user = FactoryGirl.create(:user, email: 'test8@email.com')
    user2 = FactoryGirl.create(:user, email: 'test9@email.com')
    veterinarian3 = FactoryGirl.create(:veterinarian, name: 'A Veterinarian')
    farrier3 = FactoryGirl.create(:farrier, name: 'A Farrier')
    horse = FactoryGirl.create(:horse, user: user2, veterinarian: veterinarian3, farrier: farrier3)

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test8@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'
    click_on 'Add New Charge'
    select 'Mr. Ed', from: 'Horse'
    select '2017', from: 'charge_date_1i'
    select 'September', from: 'charge_date_2i'
    select '9', from: 'charge_date_3i'
    fill_in 'Amount', with: '400.00'
    fill_in 'Description', with: 'I am a valid charge!'
    click_on 'Submit'

    expect(page).to have_content('New Charge Added!')
  end
end
