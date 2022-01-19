# 리스트 5-3 record_controller.rb

class RecordController < ApplicationController

  def find_by2
    @book = Book.find_by(publish: '제이펍', price: 26000)
    render 'books/show'
  end
  
end
