# 리스트 7-20 routes.rb

Rails.application.routes.draw do
  resources :reviews do
    get :unapproval, on: :collection
    get :draft, on: :member
  end

  resources :users do
    get :unapproval, on: :collection
    get :draft, on: :member
  end

  concern :additional do
    get :unapproval, on: :collection
    get :drafetl, on: member
  end

  resources :reviews, concerns: :additional
  resources :users, concerns: :additional
end
