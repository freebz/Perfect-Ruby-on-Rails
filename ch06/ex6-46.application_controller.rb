# 리스트 6-46 application_controller.rb

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_logined

  private
  def check_logined
    # ...생략...
  end
end
