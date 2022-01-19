# 리스트 5-53 user.rb

class User < ApplicationRecord
  # ...생략...
  validates :email, confirmation: true
end
