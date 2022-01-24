# 리스트 5-95 memo.rb

class Memo < ApplicationRecord
  belongs_to :memoable, polymorphic: true
end
