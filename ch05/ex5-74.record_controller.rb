# 리스트 5-74 record_controller.rb

class RecordController < ApplicationController

  def hasmany
    @book = Book.find_by(isbn: '978-4-7741-5878-5')
  end
  
end
