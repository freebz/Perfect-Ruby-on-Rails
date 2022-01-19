# 리스트 5-84 book.rb

class Book < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
end
