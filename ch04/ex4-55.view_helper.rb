# 리스트 4-55 view_helper.rb

module ViewHelper

  # datetime:변환 대상 날짜와 시간(Time 객체)
  # type:출력 형식(날짜와 시간 :datetime, 날짜만 :date, 시간만 :time)
  def format_datetime(datetime, type = :datetime)

    # 매개 변수 datetime이 nil이라면 빈 문자열을 리턴
    return '' unless datetime

    # 매개 변수 type 값을 기반으로 형식 문자열 설정
    case type
      when :datetime
        format = '%Y년 %m월 %d일 %H:%M:%S'
      when :date
        format = '%Y년 %m월 %d일'
      when :time
        format = '%H:%M:%S'
    end

    # 지정된 형식 문자열로 날짜와 시간을 변환
    datetime.strftime(format)
  end
end
