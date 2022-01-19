# 리스트 5-95 memo.rb

class Memo < ActiveRecord::Base
  belongs_to :memoable, polymorphic: true
end
