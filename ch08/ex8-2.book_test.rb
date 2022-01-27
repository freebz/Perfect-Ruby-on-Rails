# 리스트 8-2 book_test.rb

require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "book validate" do
    book = Book.new({
      isbn: '978-4-7741-44',
      title: 'Ruby on Rails 입문',
      price: 3100,
      publish: '제이펍',
      published: '2014-02-14',
      cd: false
    })
    assert !book.save, 'Failed to validate'
    assert_equal book.errors.size, 2, 'Failed to validate count'
    assert book.errors[:isbn].any?, 'Failed to isbn validate'
  end
end
