# 리스트 5-97 record_controller.rb

class RecordController < ApplicationController

  def assoc_join
    @books = Book.joins(:reviews, :authors).
      order('books.title, reviews.updated_at').
      select('books.*, reviews.body, authors.name')
  end
  
end
