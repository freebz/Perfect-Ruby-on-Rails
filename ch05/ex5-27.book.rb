# 리스트 5-27 book.rb

class Book < ApplicationRecord
  scope :jpub, -> { where(publish: '제이펍') }
  scope :newer, -> { order(published: :desc) }
  scope :top10, -> { newer.limit(10) }
  scope :whats_new, ->(pub) {
    where(publish: pub).order(published: :desc).limit(5)
  }
end
