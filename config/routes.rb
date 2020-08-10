Rails.application.routes.draw do
    post '/login', to: "sessions#create"
    get '/get_current_user', to: 'sessions#get_current_user'
    delete '/logout', to: "sessions#destroy"
  
  namespace :api do
    namespace :v1 do
        resources :listings
        resources :users
        resources :reviews
    end
  end
end
