# 리스트 6-51 application_controller.rb

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
