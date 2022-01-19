# 리스트 5-13 record_controller.rb

class RecordController < ApplicationController

  def offset
    @books = Book.order(published: :desc).limit(3).offset(4)
    render 'hello/list'
  end
  
end
