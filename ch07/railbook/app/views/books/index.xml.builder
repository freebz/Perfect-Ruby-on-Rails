# 리스트 6-21 books/index.xml.builder

# <books> 요소를 생성
xml.books do
  # @books를 기반으로 하여 차례대로 <book> 요소를 생성
  @books.each do |b|
    xml.book(isbn: b.isbn) do
      xml.title(b.title)
      xml.price(b.price)
      xml.publish(b.publish)
      xml.published(b.published)
      xml.cd(b.cd)
    end
  end
end
