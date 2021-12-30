# 리스트 4-67 view_controller.rb

class ViewController < ApplicationController
  
  def multi
    render layout: 'layout'     # 레이아웃 layout.html.erb를 적용
  end

end
