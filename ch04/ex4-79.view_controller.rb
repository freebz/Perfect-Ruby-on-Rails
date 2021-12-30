# 리스트 4-79 view_controller.rb

class ViewController < ApplicationController
  
  def partial_col
    @books = Book.all
  end
  
end
