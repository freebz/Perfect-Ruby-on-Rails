# 리스트 6-1 ctrl_controller.rb

class CtrlController < ApplicationController

  def para
    render text: 'id 매개 변수:' + params[:id]
  end

end
