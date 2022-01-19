# 리스트 5-39 record_controller.rb

class RecordController < ApplicationController

  def destroy
    Book.delete(params[:id])
    # ...생략...
  end

end
