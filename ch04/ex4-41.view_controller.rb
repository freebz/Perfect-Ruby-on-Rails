# 리스트 4-41 view_controller.rb

class ViewController < ApplicationController
  
  def default_url_options(options = {})
    { charset: 'utf-8' }
  end

end
