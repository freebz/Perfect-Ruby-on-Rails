# 리스트 5-86 user.rb

class User < ApplicationRecord
  has_one :author
  has_many :reviews
  has_many :books, through: :reviews
  
  validates :agreement, acceptance: { on: create }
  # validates :email, confirmation: true, presence: { unless: 'dm.blank?' }
  # with_options unless: 'dm.blank?' do |dm|
  #   dm.validates :email, presence: true
  #   dm.validates :roles, presence: true
  # end
end
