# 리스트 5-94 author.rb

class Author < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :books
  has_many :comments, -> { where(deleted: false) }, class_name: 'FanComment',
    foreign_key: 'author_no'
  has_many :memos, as: :memoable
end
