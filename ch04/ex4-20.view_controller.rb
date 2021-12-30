# 리스트 4-20 view_controller.rb

class ViewController < ApplicationController
  
  def col_radio
    @book = Book.new(publish: '제이펍')
    @books = Book.select(:publish).distinct
  end

end
