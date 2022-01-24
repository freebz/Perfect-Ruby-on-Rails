# 리스트 6-40 ctrl_controller.rb

class CtrlController < ApplicationController
  # index 액션에 before 필터 auth를 등록
  before_action :auth, only: :index
  # before와 after 필터 등록
  before_action :start_logger, only: [:index, :index2]
  after_action :end_logger, except: :index
  # around 필터 등록
  around_action :around_logger
  
  #skip_action_callback :my_logging

  def para
    render plain: 'id 매개 변수:' + params[:id]
  end

  def para_array
    render plain: 'category 매개 변수: ' + params[:category].inspect
  end

  def req_head
    render plain: request.headers['User-Agent']
  end

  def req_head2
    @headers = request.headers
  end

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
      result = "#{name}를  업로드했습니다."
    end
    # 성공 또는 오류 글자를 저장
    render plain: result
  end

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
      render plain: '저장에 성공했습니다.'
    else
      render plain: @author.errors.full_messages[0]
    end
  end

  def show_photo
    # 라우트 매개 변수가 지정된 경우에는 해당 값을, 지정되지 않은 경우에는 1을 설정
    id = params[:id] ? params[:id] : 1
    # authors 테이블에서 id 값을 키로 레코드 추출
    @author = Author.find(id)
    # photo 필드(바이너리 자료형)를 응답
    send_data @author.photo, type: @author.ctype, disposition: :inline
  end

  def log
    logger.unknown('unknown')
    logger.fatal('fatal')
    logger.error('error')
    logger.warn('warn')
    logger.info('info')
    logger.debug('debug')
    render plain: '로그는 콘솔 또는 로그 파일에서 확인해주세요.'
  end

  def get_xml
    @books = Book.all
    render xml: @books
  end

  def get_json
    @books = Book.all
    render json: @books
  end

  def download
    @books = Book.all
  end

  def cookie
    # 템플릿 변수 @email에 쿠키 값을 설정
    @email = cookies[:email]
  end

  def cookie_rec
    # 쿠키 :email을 설정(유효 기간은 3개월)
    cookies[:email] = { value: params[:email],
      expires: 3.months.from_now, http_only: true }
    render plain: '쿠키를 저장했습니다.'
  end

  def session_show
    @email = session[:email]
  end

  def session_rec
    session[:email] = params[:email]
    render plain: '세션을 저장했습니다.'
  end

  # 필터의 동작 확인을 위해 index 액션 정의
  def index
    sleep 3                           # 필터의 실행 시간에 차이를 주고자 잠시 휴식
    render plain: 'index 액션이 실행되었습니다.'
  end

  private
  # 시작 시간을 로그로 등록
  def start_logger
    logger.debug('[Start] ' + Time.now.to_s)
  end

  # 종료 시간을 로그로 등록
  def end_logger
    logger.debug('[Finish] ' + Time.now.to_s)
  end

  private
  # 시작 또는 종료 시간을 로그로 기록
  def around_logger
    logger.debug('[Start1] ' + Time.now.to_s)
    yield  # 액션을 실행
    logger.debug('[Finish1] ' + Time.now.to_s)
  end

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
