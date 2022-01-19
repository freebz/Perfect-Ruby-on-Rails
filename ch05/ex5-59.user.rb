# 리스트 5-59 user.rb

class User < ApplicationRecord
  validates :email, presence: { unless: 'dm.blank?' }
end
