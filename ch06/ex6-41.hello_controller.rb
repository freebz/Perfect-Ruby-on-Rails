# 리스트 6-41 hello_controller.rb

class HelloController < ApplicationController
  # view 액션에만 적용되는 before 필터 check_logined를 등록
  before_action :check_logined, only: :view
  # ...생략...
  
  # 이미 인증됐는지를 판정하는 check_logined 필터를 정의
  private
  def check_logined
    # 세션 정보 :usr(id 값)이 존재하는지 확인
    if session[:usr] then
      # 현재 경우는 usrs 테이블을 검색하여 사용자 정보를 추출
      begin
        @usr = User.find(session[:usr])
        # 사용자 정보가 존재하지 않는 경우는 부정한 접근으로 파난하고 세션을 제거
      rescue ActiveRecord::RecordNotFound
        reset_session
      end
    end
    # 사용자 정보를 추출할 수 없는 경우에는 로그인 페이지(login#index)로 리다이렉트
    unless @usr
      flash[:referer] = request.fullpath
      redirect_to controller: :login, action: :index
    end
  end
end
