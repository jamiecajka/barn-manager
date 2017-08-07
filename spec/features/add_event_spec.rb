require 'spec_helper'
require 'rails_helper'

feature 'admin can add a new event' do
  scenario 'admin can see link to owner info login' do
    user = FactoryGirl.create(:user, email: 'test10@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test10@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'

    expect(page).to have_content('Owner Info')
  end

  scenario 'admin clicks on link Owner Info and are redireced to page with Add links' do
    user = FactoryGirl.create(:user, email: 'test10@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test10@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'

    expect(page).to have_content('Add New Event')
  end

  scenario 'admin clicks on link Add New Note and is redirected to a form' do
    user = FactoryGirl.create(:user, email: 'test10@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test10@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'
    click_on 'Add New Event'

    expect(page).to have_content('Add New Event')
  end

  scenario 'admin can add a new event' do
    user = FactoryGirl.create(:user, email: 'test10@email.com')
    user2 = FactoryGirl.create(:user, email: 'test11@email.com')
    veterinarian4 = FactoryGirl.create(:veterinarian, name: 'I.Am Veterinarian')
    farrier4 = FactoryGirl.create(:farrier, name: 'I.Am Farrier')
    horse = FactoryGirl.create(:horse, user: user2, veterinarian: veterinarian4, farrier: farrier4)

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test10@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'
    click_on 'Add New Event'
    select 'Mr. Ed', from: 'Horse'
    select '2017', from: 'event_date_1i'
    select 'September', from: 'event_date_2i'
    select '9', from: 'event_date_3i'
    fill_in 'Time', with: '2:30'
    fill_in 'Description', with: 'I am a valid event!'
    fill_in 'Additional Info', with: 'Additional Info'
    click_on 'Submit'

    expect(page).to have_content('New Event Added!')
  end
end
