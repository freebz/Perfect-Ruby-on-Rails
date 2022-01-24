# 리스트 6-4 books_controller.rb

class BooksController < ApplicationController
  
  def create
    @book = Book.new(book_params)
    # ...생략...
  end
  # ...생략...
  def book_params
    params.require(:book).permit(:isbn, :title, :price, :publish, :published, :cd)
  end
end
