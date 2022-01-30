# 리스트 9-11 ajax_controller.rb

class AjaxController < ApplicationController
  
  def search
    # 선택 상자에 표시되는 출판사 이름 응답
    @books = Book.select(:publish).distinct
  end

  def result
    # 선택 상자에서 지정된 출판사에서 books 테이블을 검색
    @books = Book.where(publish: params[:publish])
  end

end
