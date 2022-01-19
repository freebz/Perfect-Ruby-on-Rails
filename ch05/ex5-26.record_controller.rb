# 리스트 5-26 record_controller.rb

class RecordController < ApplicationController

  def scope
    @books = Book.jpub.top10
    render 'hello/list'
  end

end
