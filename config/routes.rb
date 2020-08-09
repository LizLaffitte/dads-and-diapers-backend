Rails.application.routes.draw do
  post "/login", to "sessions#create"
  
  namespace :api do
    namespace :v1 do
        resources :listings
        resources :users
        resources :reviews
    end
  end
end
