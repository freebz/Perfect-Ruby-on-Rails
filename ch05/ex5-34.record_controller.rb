# 리스트 5-34 record_controller.rb

class RecordController < ApplicationController

  def literal_sql
    @books = Book.find_by_sql(['SELECT publish, AVG(price) AS avg_price FROM "books"
      GROUP BY publish HAVING AVG(price) >= ?', 2500])
    render 'record/groupby'
  end

end
