# 리스트 4-74 view_controller.rb

class ViewController < ApplicationController
  
  def partial_basic
    @book = Book.find(2)
  end
  
end
