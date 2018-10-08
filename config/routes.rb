Rails.application.routes.draw do
  get 'shifts/new'
  get 'shifts/create'
  get 'workers/new'
  get 'workers/create'
  get 'workers/edit'
  get 'workers/update'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
