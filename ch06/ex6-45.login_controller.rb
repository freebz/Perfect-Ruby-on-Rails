# 리스트 6-45 login_controller.rb

class LoginController < ApplicationController
  
  def logout
    reset_session           # 세션 제거
    redirect_to '/'         # 최상위 페이지로 리다이렉트
  end
  
end
