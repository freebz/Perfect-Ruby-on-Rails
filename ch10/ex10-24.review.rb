# 리스트 10-24 review.rb

class Review < ApplicationRecord
  belongs_to :book, touch: true
  # ...생략...
end
