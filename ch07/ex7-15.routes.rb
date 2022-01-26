# 리스트 7-15 routes.rb

Rails.application.routes.draw do
  resources :books do
    resources :reviews
  end
end
