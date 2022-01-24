# 리스트 6-40 ctrl_controller.rb

class CtrlController < ApplicationController
  # index 액션에 before 필터 auth를 등록
  before_action :auth, only: :index
  # ...생략...
  private
  def auth
    # 인증 처리에 사용할 사용자 이름과 비밀번호
    name = 'arint'
    passwd = '8cb2237d0679ca88db6464eac60da96345513964'
    # 기본 인증 실행(입력된 사용자 이름과 비밀번호를 name, passwd와 비교)
    authenticate_or_request_with_http_basic('Railbook') do |n, p|
      n == name &&
        Digest::SHA1.hexdigest(p) == passwd
    end
  end
end
