Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root "home#index"

  concern :favoritable do |options|
    shallow do
      post "/favorite", { to: "favorites#create", on: :member }.merge(options)
      delete "/favorite", { to: "favorites#destroy", on: :member }.merge(options)
    end
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :dashboard, only: :index
      resources :search, only: :index
      resources :categories, only: %i[index show]
      resources :recently_heards, only: :create
      resources :songs, only: [] do
        concerns :favoritable, favoritable_type: 'Song'
      end  
      resources :favorites, only: :index
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
