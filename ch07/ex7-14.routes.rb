# 리스트 7-14 routes.rb

Rails.application.routes.draw do
  resources :users, only: [ :index, :new, :create, :edit, :update ]
end
