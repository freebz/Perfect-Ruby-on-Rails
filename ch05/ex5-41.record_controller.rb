# 리스트 5-41 record_controller.rb

class RecordController < ApplicationController

  def transact
      Book.transaction do
        b1 = Book.new({isbn: '978-4-7741-4223-0',
          title: 'Ruby 포켓 레퍼런스',
          price: 2000, publish: '제이펍', published: '2011-01-01'})
        b1.save!
        raise '예외 발생: 모든 처리를 취소합니다.'
        b2 = Book.new({isbn: '978-4-7741-4223-2',
          title: 'Tomcat 포켓 레퍼런스',
          price: 2500, publish: '제이펍', published: '2011-01-01'})
        b2.save!
      end
      render text: '트랜잭션에 성공했습니다.'
    rescue => e
      render text: e.message
  end

end
