# 리스트 10-35 application_controller.rb

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_logined
  before_action :detect_locale

  # RecordNotFound 예외는 id_invalid 메서드에서 처리합니다.
  rescue_from ActiveRecord::RecordNotFound, with: :id_invalid

  add_flash_types :info    # info 키를 등록

  # 현재 로케일 설정으로 locale 옵션을 기본 설정
  def default_url_options(options = {})
    { locale: I18n.locale }
  end

  private
  def check_logined
    # ...생략...
  end

  private
  def id_invalid(e)
    # 상태 코드 404(Not Found)로 뷰를 출력합니다.
    render 'shared/record_not_found', status: 404
  end

  private
  def detect_locale
    I18n.locale = params[:locale]
  end
end
