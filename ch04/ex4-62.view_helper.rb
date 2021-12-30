# 리스트 4-62 view_helper.rb

module ViewHelper

  # ...생략...
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
