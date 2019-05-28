Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :honors, only: [:index, :update, :destroy]
      resources :interests, only: [:index, :create, :update, :destroy]
      resources :jobs, only: [:index, :create, :update, :destroy]
      resources :links, only: [:index, :create, :update, :destroy]
      resources :skills, only: [:index, :create, :update, :destroy]
<<<<<<< HEAD
      resources :users, only: [:index, :create, :update, :destroy]
      resources :githubs, only: [:index, :create, :update, :destroy]
      post '/login', to: 'auth#create'
=======
      resources :users, only: [:index, :create, :update, :destroy, :show]
      resources :githubs, only: [:index, :create, :update, :destroy]
>>>>>>> b169c8f4446ec45b6ce96ad3d2a755a7cc5083a2
    end
  end
end
