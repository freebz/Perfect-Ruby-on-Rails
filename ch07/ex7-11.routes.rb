# 리스트 7-11 routes.rb

Rails.application.routes.draw do
  resources :reviews do
    collection do
      get :unapproval
    end
    member do
      get :draft
    end
  end
end
