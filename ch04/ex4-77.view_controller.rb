# 리스트 4-77 view_controller.rb

class ViewController < ApplicationController
  
  def partial_param
    @book = Book.find(2)
  end

end
