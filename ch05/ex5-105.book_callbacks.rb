# 리스트 5-105 book_callbacks.rb

class BookCallbacks
  attr_accessor :logger
  self.logger ||= Rails.logger

  def after_destroy(b)
    logger.info('deleted: ' + b.inspect)
  end
end
