# 리스트 5-66 book.rb

class Book < ApplicationRecord
  # ...생략...
  validate :isbn_valid?
  private
  def isbn_valid?
    errors.add(:isbn, '는 올바른 형식이 아닙니다.') unless isbn =~ /\A[0-9]{3}-[0-9]{1}-[0-9]{3,5}-[0-9]{4}-[0-9X]{1}\z/
  end
end
