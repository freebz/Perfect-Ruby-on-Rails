# 리스트 5-14 record_controller.rb

class RecordController < ApplicationController

  def page
    page_size = 3    # 페이지마다 출력할 데이터 수
    page_num = params[:id] == nil ? 0 : params[:id].to_i - 1    # 현재 페이지
    @books = Book.order(published: :desc).limit(page_size).offset(page_size * page_num)
    render 'hello/list'
  end

end
