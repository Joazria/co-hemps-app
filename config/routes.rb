Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

 resources :cohemps, only: [:show, :create, :new, :destroy], except: :index do
    resources :bookings, only: [:create]
  end
#  resources :bookings, only: [:update]
 patch 'bookings/:id/cancel', to: 'bookings#update', as: :booking_cancel
 patch 'bookings/:id/approve', to: 'bookings#approve', as: :booking_approve
  get "profile", to: "pages#profile"
end
