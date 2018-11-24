Rails.application.routes.draw do
  resources :line_items
  resources :carts
	resources :line_items
  resources :laptops
  devise_for :users, controllers: {

  	registrations: 'registrations'
  }
  root 'laptops#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
