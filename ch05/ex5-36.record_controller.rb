# 리스트 5-36 record_controller.rb

class RecordController < ApplicationController

  def update_all2
    cnt = Book.order(:published).limit(5)
      .update_all('price = price * 0.8')
    render text: "#{cnt}개의 데이터를 업데이트했습니다."
  end
  
end
