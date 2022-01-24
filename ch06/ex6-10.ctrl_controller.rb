# 리스트 6-10 ctrl_controller.rb

class CtrlController < ApplicationController

  def upload_process
    # 업로드 파일 추출
    file = params[:upfile]
    # 파일 이름 추출
    name = file.original_filename
    # 사용 가능한 확장자 정의
    perms = ['.jpg', '.jpeg', '.gif', '.png']
    # 배열 {{perms}}를 기반으로 업로드된 파일의 확장자 확인
    if !perms.include?(File.extname(name).downcase)
      result = '이미지 파일만 업로드해주세요!'
    # 업로드 파일의 크기가 1MB를 넘을 때
    elsif file.size > 1.megabyte
      result = '1MB 이하의 파일만 업로드해주세요!'
    else
      # /public/doc 폴더에 파일을 저장
      File.open("public/docs/#{name}", 'wb') { |f| f.write(file.read) }
      result = "#{name.toutf8}를  업로드했습니다."
    end
    # 성공 또는 오류 글자를 저장
    render text: result
  end
  
end
