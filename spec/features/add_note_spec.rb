require 'spec_helper'
require 'rails_helper'

feature 'admin can add a new note' do
  scenario 'admin can see link to owner info login' do
    user = FactoryGirl.create(:user, email: 'test6@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test6@email.com'
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

    expect(page).to have_content('Add New Note')
  end

  scenario 'admin clicks on link Add New Note and is redirected to a form' do
    user = FactoryGirl.create(:user, email: 'test6@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test6@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'
    click_on 'Add New Note'

    expect(page).to have_content('Add New Note')
  end

  scenario 'admin can add a new note' do
    user = FactoryGirl.create(:user, email: 'test6@email.com')
    user2 = FactoryGirl.create(:user, email: 'test7@email.com')
    veterinarian2 = FactoryGirl.create(:veterinarian, name: 'Ima Veterinarian')
    farrier2 = FactoryGirl.create(:farrier, name: 'Ima Farrier')
    horse = FactoryGirl.create(:horse, user: user2, veterinarian: veterinarian2, farrier: farrier2)

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test6@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Owner Info'
    click_on 'Add New Note'
    select 'Mr. Ed', from: 'Horse'
    fill_in 'Enter Note', with: 'I am a valid note!'
    click_on 'Submit'

    expect(page).to have_content('New Note Added!')
  end
end
