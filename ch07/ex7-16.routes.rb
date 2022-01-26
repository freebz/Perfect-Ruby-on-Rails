# 리스트 7-16 routes.rb

Rails.application.routes.draw do
  resources :books do
    resources :reviews, shallow: true
  end
end
