# 리스트 5-98 record_controller.rb

class RecordController < ApplicationController

  def assoc_join2
    @books = Book.joins(reviews: :user).
      select('books.*, reviews.body, users.username')
  end
  
end
