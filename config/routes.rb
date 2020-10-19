Rails.application.routes.draw do
  get 'contacts/new'
  # post 'contacts/create'
  # get 'contacts/create'
  # resources :contacts, only: [ :new, :create ]
  # get 'contacts/thanks'
  resources :products
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/historia', to:'pages#historia'

end
