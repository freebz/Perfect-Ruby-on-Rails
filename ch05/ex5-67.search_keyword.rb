# 리스트 5-67 search_keyword.rb

class SearchKeyword
  include ActiveModel::Model

  attr_accessor :keyword

  validates :keyword, presence: true
end
