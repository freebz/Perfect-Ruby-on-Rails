# 리스트 4-8 view_controller.rb

class ViewController < ApplicationController

  def select
    @book = Book.new(publish: '제이펍')
  end

end
