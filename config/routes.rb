Rails.application.routes.draw do
  resources :reviews
  namespace :api do
    namespace :v1 do
        resources :listings
    end
  end
end
