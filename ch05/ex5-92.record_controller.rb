# 리스트 5-92 record_controller.rb

class RecordController < ApplicationController

  def cache_counter
    @user = User.find(1)
    render text: @user.reviews.size
  end
  
end
