Rails.application.routes.draw do
	root 'static_pages#index'
  resources :requests
  resources :recrutements
  resources :clubs
  resources :quarters
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
