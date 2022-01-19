# 리스트 5-81 author.rb

class Author < ApplicationRecord
  has_and_belongs_to_many :books
end
