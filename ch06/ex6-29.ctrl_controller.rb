# 리스트 6-29 ctrl_controller.rb

class CtrlController < ApplicationController

  def session_show
    @email = session[:email]
  end

  def session_rec
    session[:email] = params[:email]
    render text: '세션을 저장했습니다.'
  end
  
end
