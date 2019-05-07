Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
<<<<<<< HEAD
      resources :recipes, only: [:index, :create]
      resources :users, only: [:create]
      post '/login', to: 'users#create'
      get '/profile', to: 'users#profile'
=======
      resources :recipes, only: [:index]
      resources :users, only: [:index, :create, :show, :destroy]
      post '/signup', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#current_profile'
>>>>>>> master
    end
  end



end
