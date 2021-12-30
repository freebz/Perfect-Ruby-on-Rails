# 리스트 4-4 view_controller.rb

class ViewController < ApplicationController
  
  def form_for
    @book = Book.new
  end

end
