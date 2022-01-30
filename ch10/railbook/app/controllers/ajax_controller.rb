# 리스트 9-21 ajax_controller.rb

require 'net/http'

class AjaxController < ApplicationController

  def upanel
    @time = Time.now.to_s
  end

  def search
    # 선택 상자에 표시되는 출판사 이름 응답
    @books = Book.select(:publish).distinct
  end

  def result
    sleep(2)    # 2초 동안 처리를 정지
    # 선택 상자에서 지정된 출판사에서 books 테이블을 검색
    @books = Book.where(publish: params[:publish])
  end

  def search_slide
    # API 키/비밀 키 입력(자신의 것을 사용하세요!)
    api_key = 'xxxxxxxx'
    secret = 'xxxxxxxxx'
    # 타입 스템프와 해시 준비
    ts = Time.now.to_i
    h = Digest::SHA1.hexdigest(secret + ts.to_s)
    # Slideshare API에 접근하고 결과를 JSON 형식으로 출력
    Net::HTTP.start('www.slideshare.net', 443,
      use_ssl: true, ca_file: 'tmp/cacert.pem') do |https|
      res = https.get("/api/2/search_slideshows?q=#{ERB::Util.url_encode(params[:keywd])}&lang=ko&api_key=#{api_key}&hash=#{h}&ts=#{ts}")
      render json: Hash.from_xml(res.body).to_json
    end
  end
  
end
