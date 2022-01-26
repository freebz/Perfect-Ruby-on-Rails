# 리스트 4-62 view_helper.rb

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

  # collection:리스트를 생성하기 위한 객체 배열
  # prop: 목록으로 출력하고 싶은 속성 이름
  def list_tag(collection, prop)
        # <ul> 태그를 생성
    content_tag(:ul) do
        # <ul> 태그 내부에 <li> 태그를 순서대로 생성
      collection.each do |element|
        concat content_tag(:li, element.attributes[prop])
      end
    end
  end

  def list_tag2(collection, prop)
    list = '<ul>'
    collection.each do |element|
      list.concat('<li>')
      list.concat(h element.attributes[prop])
      list.concat('</li>')
    end
    raw list.concat('</ul>')
  end

  def blockquote_tag(cite, citetext, options = {}, &block)
    # 매개 변수 options에 매개 변수 cite에 지정된 인용 대상 URL을 추가
    options.merge! cite: cite
    # <blockquote> 태그 생성
    quote_tag = content_tag(:blockquote, capture(&block), options)
    # 인용 대상을 나타내는 <p> 태그 생성
    p_tag = content_tag(:p) do
      concat '출전: '
      concat content_tag(:cite, citetext) 
    end
    # <blockquote> 태그와 <p> 태그를 연결하고 결과를 리턴
    quote_tag.concat(p_tag)
  end
end
