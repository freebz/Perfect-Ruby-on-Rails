# 리스트 5-94 author.rb

class Author < ActiveRecord::Base
  # ...생략...
  has_many :memos, as: :memoable
  # ...생략...
end
