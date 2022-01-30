# 리스트 10-34 application_controller.rb

class ApplicationController < ActionController::Base
  before_action :detect_locale
  # ...생략...
  private
  def detect_locale
    I18n.locale = request.headers['Accept-Language'].scan(/\A[a-z]{2}/).first
  end
end
