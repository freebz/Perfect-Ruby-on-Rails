# 리스트 5-62 book.rb

class Book < ApplicationRecord
  validates :isbn,
    # ...생략...
    length: { is: 17 },
    isbn: true
  
end
