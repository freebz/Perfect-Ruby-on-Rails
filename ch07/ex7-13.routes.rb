# 리스트 7-13 routes.rb

Rails.application.routes.draw do
  resources :users, except: [ :show, :destroy ]
end
