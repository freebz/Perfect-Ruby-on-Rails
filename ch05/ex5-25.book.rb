# 리스트 5-25 book.rb

class Book < ApplicationRecord
  scope :jpub, -> { where(publish: '제이펍') }
  scope :newer, -> { order(published: :desc) }
  scope :top10, -> { newer.limit(10) }
end
