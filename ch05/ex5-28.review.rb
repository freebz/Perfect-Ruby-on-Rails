# 리스트 5-28 review.rb

class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
  default_scope { order(updated_at: :desc) }
end
