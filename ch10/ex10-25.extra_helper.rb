# 리스트 10-26 extra_helper.rb

module ExtraHelper
  def books_cache_key
    "books-#{Book.count}-#{Book.maximum(:updated_at).to_i"
  end
end
