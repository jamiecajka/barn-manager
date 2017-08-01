Rails.application.routes.draw do
  devise_for :users
  resources :users, except: [:destroy] do
    resources :horses
    resources :charges, except: [:index, :show]
    resources :events, except: [:index, :show]
  end

  resources :horses, only: [:show] do
    resources :users, only: [:index]
    resources :charges, except: [:index, :show]
    resources :events, except: [:index, :show]
    resources :veternarians, except: [:index]
    resources :farriers, except: [:index]
  end

  root 'users#new'
end
