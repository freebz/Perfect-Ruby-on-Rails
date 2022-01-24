# 리스트 6-49 application_controller.rb

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # RecordNotFound 예외는 id_invalid 메서드에서 처리합니다.
  rescue_from ActiveRecord::RecordNotFound, with: :id_invalid

  private
  def id_invalid(e)
    # 상태 코드 404(Not Found)로 뷰를 출력합니다.
    render 'shared/record_not_found', status: 404
  end
end
