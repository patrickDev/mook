Rails.application.routes.draw do 
 
  resources :listings
  devise_for :users
  resources :listings do
    resources :orders
    resources :reviews, except: [:show, :index]
  end 
  get 'pages/about'
  get 'pages/contact'
  get 'seller' => 'listings#seller'
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"
  
  root 'listings#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
