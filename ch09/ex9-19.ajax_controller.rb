# 리스트 9-19 ajax_controller.rb

class AjaxController < ApplicationController

  def result
    sleep(2)    # 2초 동안 처리를 정지
    @books = Book.where(publish: params[:publish])
  end

end
