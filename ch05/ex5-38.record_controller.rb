# 리스트 5-38 record_controller.rb

class RecordController < ApplicationController
  
  def destroy
    Book.destroy(params[:id])
    # ...생략...
  end

end
