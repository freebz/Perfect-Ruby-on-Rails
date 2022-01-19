# 리스트 5-30 record_controller.rb

class RecordController < ApplicationController

  def count
    cnt = Book.where(publish: '제이펍').count
    render text: "#{cnt}개입니다."
  end
  
end
