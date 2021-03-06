Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products
  resources :product_carts, only: [:index, :create]
  resources :carts, only: [:index, :show]

  get 'contacts/new'

  get 'messages/new'
  post 'messages/create'

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/equipe', to:'pages#equipe'
  get '/helpus', to: 'pages#helpus'
  get '/faq', to: 'pages#faq'
  get '/businessmodel', to: 'pages#businessmodel'
end
