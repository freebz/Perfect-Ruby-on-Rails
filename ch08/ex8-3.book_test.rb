# 리스트 8-3 book_test.rb

require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "where method test" do
    result = Book.find_by(title: '자바스크립트 라이브러리 실전 활용')
    assert_instance_of Book, result, 'result is not instance of Book'
    assert_equal books(:jslib).isbn, result.isbn, 'isbn column is wrong.'
    assert_equal Date.new(2013, 03, 19), result.published,
      'published column is wrong.'
  end
end
