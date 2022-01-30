# 리스트 10-53 extra_controller.rb

class ExtraController < ApplicationController

  def paging
    @books = Book.order('published DESC').
      paginate(page: params[:page], per_page: 5)
  end

end
