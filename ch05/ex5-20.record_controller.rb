# 리스트 5-20 record_controller.rb

class RecordController < ApplicationController

  def unscope
    @books = Book.where(publish: '제이펍').order(:price)
      .select(:isbn, :title).unscope(:where, :select)
    render 'books/index'
  end
  
end
