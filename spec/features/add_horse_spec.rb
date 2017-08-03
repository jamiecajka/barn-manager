require 'spec_helper'
require 'rails_helper'

feature 'add horse' do

  scenario 'specifying valid and required information' do
    user = FactoryGirl.create(:user)
    veterinarian = FactoryGirl.create(:veterinarian)
    ferrier = FactoryGirl.create(:farrier)
    visit new_horse_path
    fill_in 'Registered Name', with: 'RA Kasanova'
    fill_in 'Barn Name', with: 'Kas'
    fill_in 'Breed', with: 'Arabian'
    fill_in 'Discipline', with: 'Western'
    select 'Jamie Cajka', from: 'Owner'
    select 'Dan Fischer', from: 'Veterinarian'
    select 'Vernon Johns', from: "Farrier"
    attach_file 'horse_picture', "#{Rails.root}/spec/support/images/photo.jpg"
    click_button 'Submit'

    expect(page).to have_content('New Horse Added!')
  end
end
