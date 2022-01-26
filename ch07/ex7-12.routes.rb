# 리스트 7-12 routes.rb

Rails.application.routes.draw do
  resources :reviews do
    get :unapproval, on: :collection
    get :draft, on: :member
  end
end
