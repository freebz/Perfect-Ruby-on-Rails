# 리스트 5-86 user.rb

class User < ApplicationRecord
  has_many :reviews
  has_many :books, through: :reviews
end
