# 리스트 5-21 record_controller.rb

class RecordController < ApplicationController

  def unscope2
    @books = Book.where(publish: '제이펍', cd: true).order(:price)
      .unscope(where: :cd)
    render 'books/index'
  end
  
end
