Rails.application.routes.draw do
  resources :products, only: [:edit, :update]
  resources :product_carts, only: [:index, :create]
  get 'contacts/new'

  get 'messages/new'
  post 'messages/create'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/historia', to:'pages#historia'

end
