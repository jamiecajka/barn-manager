require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:veterinarian) { FactoryGirl.create(:veterinarian) }
  let!(:farrier) { FactoryGirl.create(:farrier) }
  let!(:horse) { FactoryGirl.create(:horse, user: user, veterinarian: veterinarian, farrier: farrier) }
  let!(:event) { FactoryGirl.create(:event, date: 20170901, horse: horse)}

  describe 'GET #show' do
    it 'assigns the requested event to @event' do
      get :show, params: { id: event.id }
      assigns(:event).should eq(event)
    end
  end

    it "renders the #show view" do
      get :show, params: { id: event.id}
      response.should render_template :show
    end
  end
