# 리스트 6-32 books_controller.rb

class BooksController < ApplicationController
  
  def create
    # ...생략...
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Book was successfully created." }
        # ...생략...
      end
    end
  end

end
