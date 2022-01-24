# 리스트 6-14 ctrl_controller.rb

class CtrlController < ApplicationController

  def show_photo
    # 라우트 매개 변수가 지정된 경우에는 해당 값을, 지정되지 않은 경우에는 1을 설정
    id = params[:id] ? params[:id] : 1
    # authors 테이블에서 id 값을 키로 레코드 추출
    @author = Author.find(id)
    # photo 필드(바이너리 자료형)를 응답
    send_data @author.photo, type: @author.ctype, disposition: :inline
  end

end
