# 리스트 4-12 view_controller.rb

class ViewController < ApplicationController

  def group_select
    @review = Review.new
    @authors = Author.all
  end

end
