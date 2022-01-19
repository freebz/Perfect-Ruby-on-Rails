# 리스트 5-46 books_controller.rb

def create
  @book = Book.new(book_params)
  respond_to do |format|
    if @book.save
      # ...저장(검사) 성공했을 때의 처리...
    else
      # ...저장(검사)에 실패했을 때의 처리...
    end
  end
end
