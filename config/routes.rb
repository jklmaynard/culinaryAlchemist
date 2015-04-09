Rails.application.routes.draw do
  # root :to => "static_pages#index"
  #
  # devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  # resources :users, only: :show
  # resources :recipes
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
      resources :recipe

      resources :users, only: [:create]
      match '/users' => 'users#show', :via => :get
      match '/users' => 'users#update', :via => :put
      match '/users' => 'users#destroy', :via => :delete
    end
  end
end
