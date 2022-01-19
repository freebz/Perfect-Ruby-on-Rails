# 리스트 5-93 book.rb

class Book < ActiveRecord::Base
  # ...생략...
  has_many :memos, as: :memoable
  # ...생략...
end
