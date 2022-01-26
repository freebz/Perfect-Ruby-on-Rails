# 리스트 7-10 routes.rb

Rails.application.routes.draw do
  scope :admin do
    resources :books
  end
end
