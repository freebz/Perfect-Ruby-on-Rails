# 리스트 5-103 book.rb

class Book < ActiveRecord::Base
  after_destroy :history_book

  private
  def history_book
    logger.info('deleted: ' + self.inspect)
  end
end
