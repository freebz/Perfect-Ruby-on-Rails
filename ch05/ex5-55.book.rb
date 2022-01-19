# 리스트 5-55 book.rb

class Book < ApplicationRecord

  validates :title, uniqueness: { scope: :publish }

end
