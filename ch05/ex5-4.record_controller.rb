# 리스트 5-4 record_controller.rb

class RecordController < ApplicationController

  def where
    @books = Book.where(publish: '제이펍')
    render 'hello/list'
  end
  
end
