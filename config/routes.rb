Insider::Application.routes.draw do
  devise_for :users
  resources :welcomes
  resources :characters

  root to: 'welcomes#index'
end
