# 리스트 7-17 routes.rb

Rails.application.routes.draw do
  resources :books do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, except: [ :index, :new, :create ]
end
