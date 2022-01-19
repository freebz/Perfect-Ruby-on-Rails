# 리스트 5-37 record_controller.rb

class RecordController < ApplicationController

  def destroy
    @book.destroy
    # ...생략...
  end
  
end
