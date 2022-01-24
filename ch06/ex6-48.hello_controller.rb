# 리스트 6-48 hello_controller.rb

class HelloController < ApplicationController
  skip_before_action :check_logined, only: :list
