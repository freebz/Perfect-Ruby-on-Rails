# 리스트 5-106 book.rb

class Book < ActiveRecord::Base
  after_destroy BookCallbacks.new
end
