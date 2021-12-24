# 리스트 3-4 books_controller.rb

class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]

  # GET /books/1 or /books/1.json
  def show
  end

  # ...생략...

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end
  
end
