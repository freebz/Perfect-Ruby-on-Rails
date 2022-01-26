# 리스트 7-18 routes.rb

Rails.application.routes.draw do
  scope shallow_path: :b do
    resources :books do
      resources :reviews, shallow: true
    end
  end
end
