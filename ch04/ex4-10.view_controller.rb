# 리스트 4-10 view_controller.rb

class ViewController < ApplicationController

  def col_select
    @book = Book.new(publish: '제이펍')
    @books = Book.select(:publish).distinct
  end

end
