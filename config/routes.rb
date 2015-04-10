Rails.application.routes.draw do
 resources :home, only: [:index]
  root :to => "home#index"
  devise_for :users

  namespace :api, defaults: {format: :json} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: :true) do

      devise_scope :user do
        match '/sessions' => 'sessions#create', :via => :post
        match '/sessions' => 'sessions#destroy', :via => :delete
      end


      resources :ingredients
      resources :recipes

      resources :users, only: [:create]
      match '/users' => 'users#show', :via => :get
      match '/users' => 'users#update', :via => :put
      match '/users' => 'users#destroy', :via => :delete
    end
  end
end
