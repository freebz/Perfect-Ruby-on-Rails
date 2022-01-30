# 리스트 10-35 application_controller.rb

class ApplicationController < ActionController::Base
  before_action :detect_locale

  # ...생략...
  # 현재 로케일 설정으로 locale 옵션을 기본 설정
  def default_url_options(options = {})
    { locale: I18n.locale }
  end
  # ...생략...
  private
  def detect_locale
    I18n.locale = params[:locale]
  end
end
