# 리스트 8-8 hello_controller_test.rb

require "test_helper"

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "routing check" do
    assert_generates('hello/list', { controller: 'hello', action: 'list' })
  end
end
