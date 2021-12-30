# 리스트 4-25 view_controller.rb

class ViewController < ApplicationController  

  def fields
    @user = User.find(1)
  end

end
