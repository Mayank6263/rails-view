Rails.application.routes.draw do

  root "users#index"
  resources :posts
  resources :users

end
# chrome://flags/#devtools-project-settings