# 리스트 5-7 record_controller.rb

class RecordController < ApplicationController

  def ph1
    @books = Book.where('publish = :publish AND price >= :price',
      publish: params[:publish], price: params[:price])
    render 'hello/list'
  end

end
