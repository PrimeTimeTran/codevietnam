Rails.application.routes.draw do
  resources :posts
  get 'home/about'
  root to: 'home#index'
end
