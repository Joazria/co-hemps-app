Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

 resources :cohemps, only: [:show, :create, :new, :destroy], except: :index do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:update]
  get "profile", to: "pages#profile"
end
