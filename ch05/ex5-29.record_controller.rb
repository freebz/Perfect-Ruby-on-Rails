# 리스트 5-29 record_controller.rb

class RecordController < ApplicationController

  def def_scope
    render text: Review.all.inspect
  end
  
end
