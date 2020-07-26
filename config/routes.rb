Rails.application.routes.draw do
  resources :comments
  resources :topics
  resources :forums
  resources :interviews
  resources :applications
  resources :job_listings
  resources :users , only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
