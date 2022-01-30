# 리스트 10-36 routes.rb

Rails.application.routes.draw do
  resources :members
  resources :fan_comments
  resources :reviews
  resources :authors
  resources :users
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match ':controller(/:action(/:id))', via: [ :get, :post, :patch ]
  scope "(:locale)", locale: /ko|en|de/ do
    resources :books
    match ':controller(/:action(/:id))', via: [ :get ]
  end
end
