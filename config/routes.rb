Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :users
      # post '/users/index', to: 'users#index'
      # post '/user/:id', to: 'users#show'
      # post '/users', to: 'users#create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
