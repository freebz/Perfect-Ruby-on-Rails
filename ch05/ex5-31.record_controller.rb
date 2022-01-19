# 리스트 5-31 record_controller.rb

class RecordController < ApplicationController

  def average
    price = Book.where(publish: '제이펍').average(:price)
    render text: "평균 가격은 #{price}원입니다."
  end
  
end
