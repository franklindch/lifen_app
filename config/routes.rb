Rails.application.routes.draw do

  resources :users, only: [:new, :create, :edit, :update]
  resources :shifts, only: [:new, :create]
  resources :shifts, only: [:show] do
    patch 'assign_worker', to: 'shifts#assign_worker'
    put 'assign_worker', to: 'shifts#assign_worker_shift'
  end
  root to: 'shifts#new'
end
