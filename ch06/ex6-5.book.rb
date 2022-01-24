# 리스트 6-5 book.rb

class Book < ActiveRecord::Base
  attr_accessible :title, :price, :publish
end
