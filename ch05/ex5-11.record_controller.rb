# 리스트 5-11 record_controller.rb

class RecordController < ApplicationController

  def select
    @books = Book.where('price >= 20000').select(:title, :price)
    render 'hello/list'
  end
  
end
