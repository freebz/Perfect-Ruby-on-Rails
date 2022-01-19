# 리스트 5-8 record_controller.rb

class RecordController < ApplicationController

  def not
    @books = Book.where.not(isbn: params[:id])
    render 'books/index'
  end
  
end
