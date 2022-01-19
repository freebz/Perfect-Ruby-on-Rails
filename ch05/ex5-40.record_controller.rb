# 리스트 5-40 record_controller.rb

class RecordController < ApplicationController

  def destroy_all
    Book.destroy_all(['publish <> ?', '제이펍'])
    render text: '제거 완료'
  end
  
end
