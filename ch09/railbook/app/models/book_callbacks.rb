# 리스트 5-105 book_callbacks.rb

class BookCallbacks
  attr_accessor :logger

  def after_destroy(b)
    self.logger ||= Rails.logger
    logger.info('deleted: ' + b.inspect)
  end
end
