# 리스트 5-56 book.rb

class Book < ApplicationRecord
  validates :isbn,
    presence: true,
    uniqueness:  { allow_blank: true },
    length: { is: 17, allow_blank: true },
    format: { with: /\A[0-9]{3}-[0-9]{1}-[0-9]{3,5}-[0-9]{4}-[0-9]{1}\z/, allow_blank: true }
  
end
