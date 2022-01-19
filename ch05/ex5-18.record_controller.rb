# 리스트 5-18 record_controller.rb

class RecordController < ApplicationController

  def havingby
    @books = Book.select('publish, AVG(price) AS avg_price').group(:publish).having('AVG(price) > ?', 25000)
    render 'record/groupby'
  end

end
