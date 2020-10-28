Rails.application.routes.draw do

  devise_for :users
  root to: 'cohemps#index'

  resources :cohemps

end
