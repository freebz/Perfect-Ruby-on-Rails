# 리스트 7-21 routes.rb

Rails.application.routes.draw do
  match ':controller(/:action(/:id))', via: [ :get, :post, :patch ]
end
