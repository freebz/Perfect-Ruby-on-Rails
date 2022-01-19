# 리스트 5-32 record_controller.rb

class RecordController < ApplicationController

  def groupby2
    @books = Book.group(:publish).average(:price)
  end
  
end
