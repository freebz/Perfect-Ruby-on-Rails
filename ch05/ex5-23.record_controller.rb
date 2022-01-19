# 리스트 5-23 record_controller.rb

class RecordController < ApplicationController

  def pluck
    render text: Book.where(publish: '제이펍').pluck(:title, :price)
  end
  
end
