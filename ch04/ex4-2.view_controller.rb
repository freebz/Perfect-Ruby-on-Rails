# 리스트 4-2 view_controller.rb

class ViewController < ApplicationController

  def form_tag
    @book = Book.new
  end
  
end
