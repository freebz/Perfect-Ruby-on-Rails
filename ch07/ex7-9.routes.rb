# 리스트 7-9 routes.rb

Rails.application.routes.draw do
  scope module: :admin do
    resources :books
  end
end
