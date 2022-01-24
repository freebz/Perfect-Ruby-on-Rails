# 리스트 6-7 ctrl_controller.rb

class CtrlController < ApplicationController

  def req_head2
    @headers = request.headers
  end
  
end
