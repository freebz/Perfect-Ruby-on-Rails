# 리스트 6-27 ctrl_controller.rb

class CtrlController < ApplicationController

  def cookie
    # 템플릿 변수 @email에 쿠키 값을 설정
    @email = cookies[:email]
  end

  def cookie_rec
    # 쿠키 :email을 설정(유효 기간은 3개월)
    cookies[:email] = { value: params[:email],
      expires: 3.months.from_now, http_only: true }
    render text: '쿠키를 저장했습니다.'
  end

end
