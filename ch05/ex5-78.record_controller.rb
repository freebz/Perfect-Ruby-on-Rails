# 리스트 5-78 record_controller.rb

class RecordController < ApplicationController

  def hasone
    @user = User.find_by(username: 'arint')
  end
  
end
