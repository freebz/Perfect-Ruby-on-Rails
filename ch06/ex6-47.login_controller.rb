# 리스트 6-47 login_controller.rb

class LoginController < ApplicationController
  skip_before_action :check_logined
