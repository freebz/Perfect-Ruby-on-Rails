# 리스트 5-50 user.rb

class User < ApplicationRecord
  validates :agreement, acceptance: true
end
