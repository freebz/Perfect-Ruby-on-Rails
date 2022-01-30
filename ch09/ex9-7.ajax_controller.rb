# 리스트 9-7 ajax_controller.rb

class AjaxController < ApplicationController
  def upanel
    @time = Time.now.to_s
  end
end
