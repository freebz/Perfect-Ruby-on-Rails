# 리스트 5-35 record_controller.rb

class RecordController < ApplicationController

  def update_all
    cnt = Book.where(publish: '한빛미디어').update_all(publish: '제이펍')
    render text: "#{cnt}개의 데이터를 업데이트했습니다."
  end
  
end
