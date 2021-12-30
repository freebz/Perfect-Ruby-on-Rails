# 리스트 4-72 view_controller.rb

class ViewController < ApplicationController
  
  def nest
    @msg = '오늘도 좋은 날씨입니다.'
    render layout: 'child'
  end
  
end
