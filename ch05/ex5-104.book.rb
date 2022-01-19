# 리스트 5-104 book.rb

class Book < ActiveRecord::Base
  after_destroy do |b|
    logger.info('deleted: ' + b.inspect)
  end
  # ...생략...
end
