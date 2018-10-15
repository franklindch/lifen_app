Rails.application.routes.draw do

  resources :users, only: [:new, :create, :edit, :update]
  resources :shifts, only: [:new, :create, :index]
  root to: 'shifts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
