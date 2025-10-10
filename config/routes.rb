Rails.application.routes.draw do


  root "users#index"

  devise_for :users
  # resources :sessions


  resources :posts
  resources :users

end
# chrome://flags/#devtools-project-settings