# 리스트 5-60 user.rb

class User < ApplicationRecord
  with_options unless: 'dm.blank?' do |dm|
    dm.validates :email, presence: true
    dm.validates :roles, presence: true
  end
end
