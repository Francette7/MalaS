Rails.application.routes.draw do
  resources :events
	root 'static_pages#index'
  resources :requests
  resources :recrutements
  resources :clubs
  resources :quarters
  resources :admin, only: [:index]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
