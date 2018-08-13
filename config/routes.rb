Rails.application.routes.draw do

  get 'games/index'
  get 'games/show'
  get 'games/new'
  get 'games/create'
  get 'games/edit'
  get 'games/destroy'

  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/destroy'
  get 'bookings/edit'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
