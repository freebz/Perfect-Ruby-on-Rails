# 리스트 6-25 ctrl/download.csv.ruby

result = ''
# 모델의 속성 이름을 쉼표로 연결해서 출력(제목줄)
result << @books.attribute_names.join(',')
result << "\r"
# 테이블의 내용을 순서대로 쉼표로 연결해서 출력(데이터줄)
@books.each do |b|
  result << b.attributes.values.join(',')
  result << "\r"
end
# 최종적으로 결과는 EUC-KR로 리턴
result.encode('EUC-KR')
