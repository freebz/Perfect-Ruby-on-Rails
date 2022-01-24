# 리스트 6-24 ctrl_controller.rb

class CtrlController < ApplicationController

  def download
    @books = Book.all
  end
  
end
