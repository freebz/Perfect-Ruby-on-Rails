# 리스트 6-18 ctrl_controller.rb

class CtrlController < ApplicationController

  def get_xml
    @books = Book.all
    render xml: @books
  end
  
end
