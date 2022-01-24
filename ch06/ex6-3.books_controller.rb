# 리스트 6-3 books_controller.rb

class BooksController < ApplicationController
  
  def create
    render text: params[:book].inspect
    return        # 이후에 나오는 처리를 중단
    # ...생략...
  end

end
