Rails.application.routes.draw do

  get 'recipes/index'

  get 'static_pages/index'

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :users, only: :show
  # root :to => "users#index"
  resources :recipes

end
