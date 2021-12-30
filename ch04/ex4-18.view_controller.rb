# 리스트 4-18 view_controller.rb

class ViewController < ApplicationController
  
  def dat_select
    @book = Book.find(1)
  end

end
