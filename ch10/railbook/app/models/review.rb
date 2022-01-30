# 리스트 10-24 review.rb

class Review < ApplicationRecord
  belongs_to :book, touch: true
  belongs_to :user, counter_cache: true
  default_scope { order(updated_at: :desc) }
end
