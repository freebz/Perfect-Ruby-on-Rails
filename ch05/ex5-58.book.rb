# 리스트 5-58 book.rb

class Book < ApplicationRecord
  validates :isbn,
    presence: { message: '는 필수입니다.'},
    uniqueness:  { allow_blank: true,
      message: '%{value}는 유일한 값이어야 합니다.' },
    length: { is: 17, allow_blank: true,
      message: '%{value}는 %{count}자리어야 합니다.' },
    format: { with: /\A[0-9]{3}-[0-9]{1}-[0-9]{3,5}-[0-9]{4}-[0-9]{1}\z/,
      allow_blank: true, message: '%{value}는 정확한 형식이 아닙니다.' }
  # ...생략...
end
