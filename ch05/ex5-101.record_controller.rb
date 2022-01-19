# 리스트 5-101 record_controller.rb

class RecordController < ApplicationController

  def assoc_includes
    @books = Book.includes(:authors).all
  end
  
end
