# 리스트 8-1 book_test.rb

require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "book save" do
    book = Book.new({
      isbn: '987-4-7741-4466-X',
      title: 'Ruby on Rails 입문',
      price: 3100,
      publish: '제이펍',
      published: '2014-03-14',
      cd: false
    })
    assert book.save, 'Failed to save'
  end
end
