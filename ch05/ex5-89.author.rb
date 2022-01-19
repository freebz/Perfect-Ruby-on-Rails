# 리스트 5-89 author.rb

class Author < ApplicationRecord
  has_many :comments, -> { where(deleted: false) }, class_name: 'FanComment',
    foreign_key: 'author_no'
end
