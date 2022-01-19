# 리스트 5-6 record_controller.rb

class RecordController < ApplicationController

  def ph1
    @books = Book.where('publish = ? AND price >= ?',
      params[:publish], params[:price])
    render 'hello/list'
  end

end
