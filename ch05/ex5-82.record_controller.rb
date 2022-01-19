# 리스트 5-82 record_controller.rb

class RecordController < ApplicationController

  def has_and_belongs
    @book = Book.find_by(isbn: '978-4-7741-5611-8')
  end
  
end
