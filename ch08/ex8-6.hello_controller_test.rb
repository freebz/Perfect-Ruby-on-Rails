# 리스트 8-6 hello_controller_test.rb

require "test_helper"

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "list action" do
    get :list
    assert_equal 10, assigns(:books).length, 'found rows is wrong.'
    assert_response :success, 'list action failed.'
    assert_template 'hello/list'
  end
end
