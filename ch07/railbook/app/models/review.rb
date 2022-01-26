# 리스트 5-91 review.rb

class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user, counter_cache: true
  default_scope { order(updated_at: :desc) }
end
