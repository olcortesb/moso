Rails.application.routes.draw do
  resources :books
  resources :users
  resources :knives
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  root to: 'welcome#index'
end
