# 리스트 6-19 ctrl_controller.rb

class CtrlController < ApplicationController

  def get_json
    @books = Book.all
    render json: @books
  end
  
end
