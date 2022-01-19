# 리스트 5-12 record_controller.rb

class RecordController < ApplicationController

  def select2
    @pubs = Book.select(:publish).distinct.order(:publish)
  end
  
end
