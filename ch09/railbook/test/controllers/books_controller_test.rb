# 리스트 8-7 books_controller_test.rb

require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { cd: @book.cd, isbn: @book.isbn, price: @book.price, publish: @book.publish, published: @book.published, title: @book.title } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { cd: @book.cd, isbn: @book.isbn, price: @book.price, publish: @book.publish, published: @book.published, title: @book.title } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end

  test "diff check" do
    assert_difference 'Book.count', 1 do
      post :create, book: { isbn: '978-4-7741-4223-0',
        title: 'Ruby 포켓 레퍼런스', price: 3000,
        publish: '제이펍' }
    end
  end
end
