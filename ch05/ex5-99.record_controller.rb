# 리스트 5-99 record_controller.rb

class RecordController < ApplicationController

  def assoc_join3
    @books = Book.joins('LEFT JOIN reviews ON reviews.book_id = books.id').
      select('books.*, reviews.body')
  end
  
end
