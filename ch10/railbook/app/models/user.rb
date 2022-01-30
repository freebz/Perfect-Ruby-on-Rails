# 리스트 6-42 user.rb

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

  def self.authenticate(username, password)
    usr = find_by(username: username)
    if usr != nil &&
      usr.password == Digest::SHA1.hexdigest(usr.salt + password) then
      usr
    else
      return
    end
  end
end
