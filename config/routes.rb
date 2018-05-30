Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :models
  resources :categories, only:[:index,:show,:edit,:update]
  resources :products, only:[:show,:edit,:update]

  get "cart" => "cart#show"
  get "cart/add/:id" => "cart#add", :as => :add_to_cart
  post "cart/remove/:id" => "cart#remove", :as => :remove_from_cart
  post "cart/checkout" => "cart#checkout", :as => :checkout

  match '/shop',    to: 'static_pages#shop',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/pros', to: 'static_pages#pros', via: 'get'
  match '/our_advantages', to: 'static_pages#our_advantages', via: 'get'


 root 'static_pages#home'
end
