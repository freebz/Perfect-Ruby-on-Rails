# 리스트 6-37 ctrl_controller.rb

class CtrlController < ApplicationController
  # around 필터 등록
  around_action :around_logger

  # ...생략...
  
  # index 액션 정의
  def index
    sleep 3
    render text: 'index 액션이 실행되었습니다.'
  end

  private
  # 시작 또는 종료 시간을 로그로 기록
  def around_logger
    logger.debug('[Start1] ' + Time.now.to_s)
    yield  # 액션을 실행
    logger.debug('[Finish1] ' + Time.now.to_s)
  end
end
