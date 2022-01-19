# 리스트 5-16 record_controller.rb

class RecordController < ApplicationController

  def groupby
    @books = Book.select("publish, AVG(price) AS avg_price").group(:publish)
  end

end
