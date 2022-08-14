Rails.application.routes.draw do
  resources :expenses
  resources :categories
  resources :users
  root 'users#index'
end
