# 리스트 3-2 books_controller.rb

class BooksController < ApplicationController

  # GET /books or /books.json
  def index
    @books = Book.all
  end

end
