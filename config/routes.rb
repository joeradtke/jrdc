Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  get 'logout',to: 'sessions#destroy'

  resources :users,only: [:new,:create,:edit,:update]
  root 'index#index'
  get 'about',to: 'index#about'
  get 'contact',to: 'index#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
