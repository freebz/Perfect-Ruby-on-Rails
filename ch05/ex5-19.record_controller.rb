# 리스트 5-19 record_controller.rb

class RecordController < ApplicationController

  def where2
    @books = Book.all
    @books.where!(publish: '제이펍')
    @books.order!(:published)
    render 'books/index'
  end
  
end
