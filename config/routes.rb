Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  # Defines the root path route ("/")
  # root "articles#index"  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'categories#index'
  resources :categories, only: [:index, :show, :new, :create, :destroy] do
    resources :expenditure, only: [:index]
  end

  resources :expenditures, only: [:new, :create, :destroy]
end
