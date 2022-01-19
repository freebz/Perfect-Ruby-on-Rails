# 리스트 5-80 book.rb

class Book < ApplicationRecord
  has_and_belongs_to_many :authors
end
