# 리스트 6-2 ctrl_controller.rb

class CtrlController < ApplicationController

  def para_array
    render text: 'category 매개 변수: ' + params[:category].inspect
  end
  
end
