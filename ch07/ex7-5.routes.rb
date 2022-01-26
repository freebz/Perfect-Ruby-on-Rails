# 리스트 7-5 routes.rb

require 'TimeConstraint'

Rails.application.routes.draw do
  resources :books, constraints: TimeConstraint.new
  # ...생략...
end
