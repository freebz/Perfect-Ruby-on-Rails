# 리스트 5-2 record_controller.rb

class RecordController < ApplicationController

  def find_by
    @book = Book.find_by(publish: '제이펍')
    render 'books/show'
  end

end
