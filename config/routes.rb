Rails.application.routes.draw do
  root "games#landing"
  resources :games do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :destroy, :edit, :index]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
