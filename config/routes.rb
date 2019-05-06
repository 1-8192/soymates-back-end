Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index]
      resources :users, only: [:create, :show]
      post '/signup', to: 'users#create'
      post '/profile', to: 'users#show'
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end



end
