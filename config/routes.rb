Rails.application.routes.draw do
  get 'pages/about'
  resources :charges 
  resources :line_items 
  resources :carts do 
    member do 
      post :pay  
    end 
  end
  resources :laptops



  resources :contacts, only: [:new, :create]
  get 'contacts/new'
  resources :searches
  resources :posts do 
  resources :show
  resources :comments


end


  devise_for :users, controllers: {

  	registrations: 'registrations'
  }
  root 'laptops#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
