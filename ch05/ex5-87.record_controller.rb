# 리스트 5-87 record_controller.rb

class RecordController < ApplicationController

  def has_many_through
    @user = User.find_by(username: 'hasat')
  end
  
end
