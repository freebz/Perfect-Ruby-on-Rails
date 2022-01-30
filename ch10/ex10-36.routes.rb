# 리스트 10-36 routes.rb

Rails.application.routes.draw do
  scope "(:locale)", locale: /ko|en|de/ do
    resources :books
    match ':controller(/:action(/:id))', via: [ :get ]
  end
end
