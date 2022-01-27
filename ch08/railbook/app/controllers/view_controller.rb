# 리스트 4-79 view_controller.rb

class ViewController < ApplicationController
  
  def form_tag
    @book = Book.new
  end

  def form_for
    @book = Book.new
  end

  def field
    @book = Book.new
  end

  def html5
    @book = Book.new
  end

  def select
    @book = Book.new(publish: '제이펍')
  end

  def col_select
    @book = Book.new(publish: '제이펍')
    @books = Book.select(:publish).distinct
  end

  def group_select
    @review = Review.new
    @authors = Author.all
  end

  def col_select2
    @books = Book.select(:publish).distinct
  end

  def dat_select
    @book = Book.find(1)
  end

  def col_radio
    @book = Book.new(publish: '제이펍')
    @books = Book.select(:publish).distinct
  end

  def fields
    @user = User.find(1)
  end

  def default_url_options(options = {})
    { charset: 'utf-8' }
  end

  def adopt
    render layout: 'sub'
  end

  def multi
    render layout: 'layout'     # 레이아웃 layout.html.erb를 적용
  end

  def nest
    @msg = '오늘도 좋은 날씨입니다.'
    render layout: 'child'
  end

  def partial_basic
    @book = Book.find(2)
  end

  def partial_param
    @book = Book.find(2)
  end

  def partial_col
    @books = Book.all
  end

  def partial_spacer
    @books = Book.all
  end
  
end
