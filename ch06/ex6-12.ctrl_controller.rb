# 리스트 6-12 ctrl_controller.rb

class CtrlController < ApplicationController

  # 업로드 입력 양식을 출력하기 위한 updb 액션
  # "~/ctrl/updb/108"처럼 경로로 호출
  def updb
    @author = Author.find(params[:id])
  end

  # [업로드] 버튼을 누르면 업로드와 관련된 처리를 수행
  def updb_process
    @author = Author.find(params[:id])
    # 업로드 파일을 데이터베이스에 저장(실패하면 첫 번째 오류를 출력)
    if @author.update(params.require(:author).permit(:data))
      render text: '저장에 성공했습니다.'
    else
      render text: @author.errors.full_messages[0]
    end
  end
  
end
