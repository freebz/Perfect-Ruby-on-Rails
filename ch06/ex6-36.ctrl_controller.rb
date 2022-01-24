# 리스트 6-36 ctrl_controller.rb

class CtrlController < ApplicationController
  # before와 after 필터 등록
  before_action :start_logger
  after_action :end_logger
  # ...생략...
  # 필터의 동작 확인을 위해 index 액션 정의
  def index
    sleep 3                          # 필터의 실행 시간에 차이를 주고자 잠시 휴식
    render text: 'index 액션이 실행되었습니다.'
  end

  private
  # 시작 시간을 로그로 등록
  def start_logger
    logger.debug('[Start] ' + Time.now.to_s)
  end

  # 종료 시간을 로그로 등록
  def end_logger
    logger.debug('[Finish] ' + Time.now.to_s)
  end
end
