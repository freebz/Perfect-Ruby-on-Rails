# 리스트 7-7 routes.rb

Rails.application.routes.draw do
  resources :users, controller: :members
  resources :reviews, as: :comments
end
