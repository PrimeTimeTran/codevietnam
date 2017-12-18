Rails.application.routes.draw do
  get 'home/about'

  root to: 'home#index'
end
