Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index, :create]
      resources :users, only: [:create]
      post '/login', to: 'users#create'
      get '/profile', to: 'users#profile'
    end
  end



end
