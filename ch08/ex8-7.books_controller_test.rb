# 리스트 8-7 books_controller_test.rb

require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "diff check" do
    assert_difference 'Book.count', 1 do
      post :create, book: { isbn: '978-4-7741-4223-0',
        title: 'Ruby 포켓 레퍼런스', price: 3000,
        publish: '제이펍' }
    end
  end
end
