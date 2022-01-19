# 리스트 5-1 record_controller.rb

class RecordController < ApplicationController

  def find
    @books = Book.find([2, 5, 10])
    render 'hello/list'
  end

end
