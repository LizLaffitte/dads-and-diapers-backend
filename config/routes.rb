Rails.application.routes.draw do
  resources :users
  resources :reviews
  namespace :api do
    namespace :v1 do
        resources :listings
    end
  end
end
