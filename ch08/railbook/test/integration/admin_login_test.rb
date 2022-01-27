# 리스트 8-10 admin_login_test.rb

require "test_helper"

class AdminLoginTest < ActionDispatch::IntegrationTest
  test "login" do
    # 1. hello#view 액션에 접근
    get '/hello/view'
    # 응답이 리다이렉트되었는지 확인
    assert_response :redirect
    # 리다이렉트 대상이 login#index 액션인지 확인
    assert_redirected_to controller: :login, action: :index
    # flash[:referrer]에 현재 URL(/hello/view)이 설정되어 있는지 확인
    assert_equal '/hello/view', flash[:referer]

    # 2. 로그인 페이지(login/index) 출력 확인
    follow_redirect!
    # 응답이 성공인지 확인
    assert_response :success
    # flash[:referer]에 원래 요청 위치(/hello/view)가 설정되어 있는지 확인
    assert_equal '/hello/view', flash[:referer]

    # 3. 사용자 이름/비밀번호를 입력해 인증 처리
    post '/login/auth', { username: 'arint', password: '112345',
      referer: '/hello/view' }
    # 응답이 리다이렉트되었는지 확인
    assert_response :redirect
    # 리다이렉트 대상이 hello#view 액션인지 확인
    assert_redirected_to controller: :hello, action: :view
    # session[:usr]에 user 테이블의 :arint의 id가 설정되어 있는지 확인
    assert_equal users(:arint).id, session[:usr]

    # 4. 원래 요청 위치(/hello/view)가 출력되는지 확인
    follow_redirect!
    assert_response :success
  end
end
