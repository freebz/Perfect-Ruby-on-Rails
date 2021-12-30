# 리스트 4-58 view_helper.rb

module ViewHelper
  # ...생략...
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
end
