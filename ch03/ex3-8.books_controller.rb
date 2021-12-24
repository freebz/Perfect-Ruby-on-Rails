# 리스트 3-8 books_controller.rb

class BooksController < ApplicationController
  
  # GET /books/new
  def new
    @book = Book.new
  end

  # ...생략...

  # POST /books or /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # ...생략...

  private
    # ...생략...
    
    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:isbn, :title, :price, :publish, :published, :cd)
    end
end
