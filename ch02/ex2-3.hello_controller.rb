# 리스트 2-3 hello_controller.rb

class HelloController < ApplicationController
  def index
    render text: 'Hello World..!'
  end

  def view
    @msg = 'Hello World..!'
  end
end
