# 리스트 5-15 record_controller.rb

class RecordController < ApplicationController

  def last
    @book = Book.order(published: :desc).last
    render 'books/show'
  end
  
end
