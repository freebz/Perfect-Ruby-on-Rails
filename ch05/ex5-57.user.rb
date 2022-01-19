# 리스트 5-57 user.rb

class User < ApplicationRecord
  validates :agreement, acceptance: { on: create }
end
