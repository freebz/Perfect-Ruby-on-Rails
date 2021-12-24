# 리스트 3-9 books_controller.rb

class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]

  # ...생략...
  
  # GET /books/1/edit
  def edit
  end

  # ...생략...

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # ...생략...

    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

end
