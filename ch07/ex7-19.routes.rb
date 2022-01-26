# 리스트 7-19 routes.rb

Rails.application.routes.draw do
  scope shallow_prefix: :b do
    resources :books do
      resources :reviews, shallow: true
    end
  end
end
