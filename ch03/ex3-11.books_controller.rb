# 리스트 3-11 books_controller.rb

class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]

  # ...생략...

  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # ...생략...

    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end
end
