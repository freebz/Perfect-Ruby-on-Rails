# 리스트 2-1 hello_controller.rb

# coding: utf-8

class HelloController < ApplicationController
  def index
    render text: 'Hello World..!'
  end
end
