require 'spec_helper'
require 'rails_helper'

feature 'admin can add a new charge' do
  scenario 'admin can see link to owner info login' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'
    click_on 'Log In'

    expect(page).to have_content('Add New Charge')
  end

  scenario 'admin clicks on link Add New Note and is redirected to a form' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Add New Charge'

    expect(page).to have_content('Add New Charge')
  end

  scenario 'admin can add a new charge' do
    user = FactoryGirl.create(:user)
    veterinarian = FactoryGirl.create(:veterinarian, name: 'A Veterinarian')
    farrier = FactoryGirl.create(:farrier)
    horse = FactoryGirl.create(:horse, user: user, veterinarian: veterinarian, farrier: farrier)
    charge = FactoryGirl.create(:charge, horse: horse, date: 20170901)
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Add New Charge'
    select horse.barn_name, from: 'Horse'
    select '2017', from: 'charge_date_1i'
    select 'September', from: 'charge_date_2i'
    select '9', from: 'charge_date_3i'
    fill_in 'Amount', with: charge.amount
    fill_in 'Description', with: charge.description
    click_on 'Submit'

    expect(page).to have_content('New Charge Added!')
  end
end
