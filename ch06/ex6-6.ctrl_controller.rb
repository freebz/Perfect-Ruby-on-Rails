# 리스트 6-6 ctrl_controller.rb

class CtrlController < ApplicationController

  def req_head
    render text: request.headers['User-Agent']
  end

end
