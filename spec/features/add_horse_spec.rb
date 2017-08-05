require 'spec_helper'
require 'rails_helper'

feature 'admin can add a new horse' do
  scenario 'admin can see link to add a new horse when they login' do
    user = FactoryGirl.create(:user, email: 'test3@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test3@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'

    expect(page).to have_content('Add New Horse')
  end

  scenario 'admin clicks on link Add New Horse and is redirected to a form' do
    user = FactoryGirl.create(:user, email: 'test3@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test3@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Add New Horse'

    expect(page).to have_content('Add New Horse')
  end

  scenario 'specifying valid and required information' do
    veterinarian = FactoryGirl.create(:veterinarian)
    ferrier = FactoryGirl.create(:farrier)
    user = FactoryGirl.create(:user, email: 'test3@email.com')
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'test3@email.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    click_on 'Add New Horse'
    fill_in 'Registered Name', with: 'RA Kasanova'
    fill_in 'Barn Name', with: 'Kas'
    fill_in 'Breed', with: 'Arabian'
    fill_in 'Discipline', with: 'Western'
    select 'Jamie Cajka', from: 'Owner'
    select 'Dan Fischer', from: 'Veterinarian'
    select 'Vernon Johns', from: "Farrier"
    attach_file 'horse_picture', "#{Rails.root}/spec/support/images/photo.jpg"
    click_on 'Submit'

    expect(page).to have_content('New Horse Added!')
  end
end
