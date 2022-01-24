# 리스트 6-38 ctrl_controller.rb

class CtrlController < ApplicationController
  # before와 after 필터 등록
  before_action :start_logger, only: [:index, :index2]
  after_action :end_logger, except: :index
