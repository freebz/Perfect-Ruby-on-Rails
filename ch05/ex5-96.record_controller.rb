# 리스트 5-96 record_controller.rb

class RecordController < ApplicationController

  def memorize
    @book = Book.find(1)
    # 도서 정보와 관련된 메모를 등록
    @memo = @book.memos.build({ body: '이후에 구매' })
    if @memo.save
      render text: '메모를 작성했습니다.'
    else
      render text: @memo.errors.full_messages[0]
    end
  end
  
end
