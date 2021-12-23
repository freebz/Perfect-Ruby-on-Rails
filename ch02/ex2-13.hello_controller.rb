# 리스트 2-8 hello_controller.rb

class HelloController < ApplicationController
  def index
    render plain: 'Hello World..!'
  end

  def view
    @msg = 'Hello World..!'
  end

  def list
    @books = Book.all
  end

  def app_var
    render plain: MY_APP['logo']['source']
  end
end
