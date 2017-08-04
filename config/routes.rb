Rails.application.routes.draw do
  devise_for :users
  resources :users, except: [:destroy] do
    resources :horses
    resources :charges, except: [:index, :show]
    resources :events, except: [:index, :show]
  end

  resources :horses do
    resources :users, only: [:show]
    resources :charges, except: [:index, :show]
    resources :events, except: [:index, :show]
    resources :veternarians, only: [:show]
    resources :farriers, only: [:show]
  end

  resources :farriers
  resources :veterinarians

  root 'users#new'
end
