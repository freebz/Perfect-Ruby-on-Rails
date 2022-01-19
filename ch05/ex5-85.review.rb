# 리스트 5-85 review.rb

class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
end
