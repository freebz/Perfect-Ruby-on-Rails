# 리스트 5-91 review.rb

class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user, counter_cache: true
  # ...생략...
end
