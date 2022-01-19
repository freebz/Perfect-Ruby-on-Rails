# 리스트 5-10 record_controller.rb

class RecordController < ApplicationController

  def reorder
    @books = Book.order(:publish).order(:price)
    render 'books/index'
  end
  
end
