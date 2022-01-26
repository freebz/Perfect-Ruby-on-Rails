# 리스트 7-3 routes.rb

Rails.application.routes.draw do
  resources :books, constraints: { id: /[0-9]{1,2}/ }
  # ...생략...
end
