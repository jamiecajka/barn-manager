require 'rails_helper'

RSpec.describe VeterinariansController, type: :controller do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:veterinarian) { FactoryGirl.create(:veterinarian) }

  describe "GET #index" do
    context 'when user is logged in as admin' do
      with :user
      before do
        sign_in user
        get :index
      end
      it "populates an array of veterinarians" do
        get :index
        assigns(:veterinarians).should eq([veterinarian])
      end

      it "renders the :index view" do
        get :index
        response.should render_template :index
      end
    end
  end

  describe 'GET #show' do
    context 'when user is logged in as admin' do
      with :user
      before do
        sign_in user
        get :show, params: { id: veterinarian.id}
      end
      it 'assigns the requested veterinarian to @veterinarian' do
        get :show, params: { id: veterinarian.id }
        assigns(:veterinarian).should eq(veterinarian)
      end
    end

      it "renders the #show view" do
        get :show, params: { id: veterinarian.id}
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

          it "veterinarian should be new" do
          Veterinarian.stub(:new).and_return(veterinarian)

          get :new

          assigns(:veterinarian).should == veterinarian
        end
      end
    end
  end
