Rails.application.routes.draw do
  resources :expenses do
    collection do
      match 'search' => 'expenses#search', via: [:get, :post], as: :search
    end
  end
  resources :categories
  resources :users
  root 'users#index'
end
