# 리스트 5-9 record_controller.rb

class RecordController < ApplicationController

  def order
    @books = Book.where(publish: '제이펍').order(published: :desc)
    render 'hello/list'
  end
  
end
