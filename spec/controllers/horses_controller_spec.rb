require 'rails_helper'

RSpec.describe HorsesController, type: :controller do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:farrier) { FactoryGirl.create(:farrier) }
  let!(:veterinarian) { FactoryGirl.create(:veterinarian) }
  let!(:horse) { FactoryGirl.create(:horse, user: user, farrier: farrier, veterinarian: veterinarian) }

  describe 'GET #show' do
    context 'when user is logged in as admin' do
      with :user
      before do
        sign_in user
        get :show, params: { id: horse.id}
      end
      it 'assigns the requested horse to @horse' do
        get :show, params: { id: horse.id }
        assigns(:horse).should eq(horse)
      end
    end

      it "renders the #show view" do
        get :show, params: { id: horse.id}
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

          it "horse should be new" do
          Horse.stub(:new).and_return(horse)

          get :new

          assigns(:horse).should == horse
        end
      end
    end
  end
