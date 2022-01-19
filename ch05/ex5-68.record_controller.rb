# 리스트 5-68 record_controller.rb

class RecordController < ApplicationController

  # 검색 필드를 출력하기 위한 액션
  def keywd
    @search = SearchKeyword.new
  end

  # [검색] 버튼을 클릭한 경우에 실행되는 액션
  def keywd_process
    # 입력된 값을 기반으로 모델 객체를 생성
    @search = SearchKeyword.new(params[:search_keyword])
    # 검사를 실행(조건을 만족하면 키워드를 만족하지 않으면 오류를 출력)
    if @search.valid?
      render text: @search.keyword
    else
      render text: @search.errors.full_messages[0]
    end
  end

end
