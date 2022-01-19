# 리스트 5-24 record_controller.rb

class RecordController < ApplicationController

  def exists
    flag = Book.where(publish: '프리렉').exists?
    render text: "존재하나요? : #{flag}"
  end
  
end
