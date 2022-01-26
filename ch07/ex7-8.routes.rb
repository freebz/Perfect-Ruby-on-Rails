# 리스트 7-8 routes.rb

Rails.application.routes.draw do
  namespace :admin do
    resources :books
  end
end
