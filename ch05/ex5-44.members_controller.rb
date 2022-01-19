# 리스트 5-44 members_controller.rb

class MembersController < ApplicationController
  
  def update
    # ...생략...
    rescue ActiveRecord::StaleObjectError
      render text: '충돌이 발생했습니다.'
  end

end
