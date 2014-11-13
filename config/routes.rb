Insider::Application.routes.draw do
  devise_for :users
  resources :welcomes

  root to: 'welcomes#index'
end
