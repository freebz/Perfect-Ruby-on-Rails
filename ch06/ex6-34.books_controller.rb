# 리스트 6-34 books_controller.rb

class BooksController < ApplicationController
  
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { 
          flash[:msg] = 'Book was successfully created.'
          redirect_to @book
        }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

end
