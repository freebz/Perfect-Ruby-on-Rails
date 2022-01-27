# 리스트 8-9 hello_controller_test.rb

require "test_helper"

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "select check" do
    # list 액션을 실행(hello/list.html.erb가 실행됨)
    get :list
    # ① <title> 태그가 한 개 이상 존재하는지
    assert_select 'title'
    # ② <title> 태그가 한 개 이상 존재하는지(①과 같은 의미)
    assert_select 'title', true
    # ③ <font> 태그가 존재하지 않는지
    assert_select 'font', false
    # ④ <title> 태그 내부에 글자 [Railbook]이 있는지
    assert_select 'title', 'Railbook'
    # ⑤ <title> 태그 내부의 글자가 영어와 숫자로 구성되어 있는지
    assert_select 'title', /[A-Za-z0-9]+/
    # ⑥ <script> 태그의 data-turbolinks-track 속성이 비어있는지 않은지
    assert_select 'script[data-turbolinks-track=?]', /.+/
    # ⑦ <table> 태그 내부에 style 속성을 가진 <tr> 태그가 10개 존재하는지
    assert_select 'table tr[style]', 10
    # ⑧ <table> 태그 내부에 style 속성을 가진 <tr> 태그가 1~10개 존재하는지
    assert_select 'table' do
      assert_select 'tr[style]', 1..10
    end
    # ⑨ <title> 요소가 한 개만 존재하고 글자가 [Railbook]인지
    assert_select 'title', { count: 1, text: 'Railbook' }
  end
end
