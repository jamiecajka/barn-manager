require 'rails_helper'

RSpec.describe ChargesController, type: :controller do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:veterinarian) { FactoryGirl.create(:veterinarian) }
  let!(:farrier) { FactoryGirl.create(:farrier) }
  let!(:horse) { FactoryGirl.create(:horse, user: user, veterinarian: veterinarian, farrier: farrier) }
  let!(:charge) { FactoryGirl.create(:charge, date: 20170901, horse: horse)}

  describe 'GET #show' do
    context 'when user is logged in as admin' do
      with :user
      before do
        sign_in user
        get :show, params: { id: charge.id}
      end
      it 'assigns the requested charge to @charge' do
        get :show, params: { id: charge.id }
        assigns(:charge).should eq(charge)
      end
    end

      it "renders the #show view" do
        get :show, params: { id: charge.id}
        response.should render_template :show
      end
    end

  describe "GET #new" do
    context 'when user is logged in as admin' do
      with :user
      before do
        sign_in user
        get :new
      end

        it "charge should be new" do
        Charge.stub(:new).and_return(charge)

        get :new

        assigns(:charge).should == charge
      end
    end
  end
end




# describe "POST create" do
#   context 'when user is logged in as admin' do
#     with :user
#     before do
#       sign_in user
#       get :new
#     end
#     it "creates a new charge" do
#       expect(post :create, 'charge').to change(:count).by(1)
#     end
#   end
#
#   #   it "redirects to the new charge" do
#   #     post :create, charge: Factory.attributes_for(:charge)
#   #     response.should redirect_to Charge.last
#   #   end
#   end
