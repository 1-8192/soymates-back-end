Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :reviews, only: [:index, :create]
      resources :recipes, only: [:index, :create]
      resources :users, only: [:index, :show, :destroy]
      resources :matches, only:[:index, :create, :show, :destroy]
      post '/signup', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#current_profile'
    end
  end



end
