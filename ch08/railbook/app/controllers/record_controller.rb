# 리스트 5-101 record_controller.rb

class RecordController < ApplicationController

  def find
    @books = Book.find([2, 5, 10])
    render 'hello/list'
  end

  def find_by
    @book = Book.find_by(publish: '제이펍')
    render 'books/show'
  end

  def find_by2
    @book = Book.find_by(publish: '제이펍', price: 26000)
    render 'books/show'
  end

  def where
    @books = Book.where(publish: '제이펍')
    render 'hello/list'
  end

  def ph1
    @books = Book.where('publish = :publish AND price >= :price',
      publish: params[:publish], price: params[:price])
    render 'hello/list'
  end

  def not
    @books = Book.where.not(isbn: params[:id])
    render 'books/index'
  end

  def order
    @books = Book.where(publish: '제이펍').order(published: :desc)
    render 'hello/list'
  end

  def reorder
    @books = Book.order(:publish).reorder(:price)
    render 'books/index'
  end

  def select
    @books = Book.where('price >= 20000').select(:title, :price)
    render 'hello/list'
  end

  def select2
    @pubs = Book.select(:publish).distinct.order(:publish)
  end

  def offset
    @books = Book.order(published: :desc).limit(3).offset(4)
    render 'hello/list'
  end

  def page
    page_size = 3    # 페이지마다 출력할 데이터 수
    page_num = params[:id] == nil ? 0 : params[:id].to_i - 1    # 현재 페이지
    @books = Book.order(published: :desc).limit(page_size).offset(page_size * page_num)
    render 'hello/list'
  end

  def last
    @book = Book.order(published: :desc).last
    render 'books/show'
  end

  def groupby
    @books = Book.select("publish, AVG(price) AS avg_price").group(:publish)
  end

  def havingby
    @books = Book.select('publish, AVG(price) AS avg_price').group(:publish).having('AVG(price) > ?', 25000)
    render 'record/groupby'
  end

  def where2
    @books = Book.all
    @books.where!(publish: '제이펍')
    @books.order!(:published)
    render 'books/index'
  end

  def unscope
    @books = Book.where(publish: '제이펍').order(:price)
      .select(:isbn, :title).unscope(:where, :select)
    render 'books/index'
  end

  def unscope2
    @books = Book.where(publish: '제이펍', cd: true).order(:price)
      .unscope(where: :cd)
    render 'books/index'
  end

  def none
    case params[:id]
      when 'all'
        @books = Book.all
      when 'new'
        @books = Book.order('published DESC').limit(5)
      when 'cheap'
        @books = Book.order(:price).limit(5)
      else
        @books = Book.none
    end
    render 'books/index'
  end

  def pluck
    render plain: Book.where(publish: '제이펍').pluck(:title, :price)
  end

  def exists
    flag = Book.where(publish: '프리렉').exists?
    render plain: "존재하나요? : #{flag}"
  end

  def scope
    @books = Book.jpub.top10
    render 'hello/list'
  end

  def def_scope
    render plain: Review.all.inspect
  end

  def count
    cnt = Book.where(publish: '제이펍').count
    render plain: "#{cnt}개입니다."
  end

  def average
    price = Book.where(publish: '제이펍').average(:price)
    render plain: "평균 가격은 #{price}원입니다."
  end

  def groupby2
    @books = Book.group(:publish).average(:price)
  end

  def literal_sql
    @books = Book.find_by_sql(['SELECT publish, AVG(price) AS avg_price FROM "books"
      GROUP BY publish HAVING AVG(price) >= ?', 2500])
    render 'record/groupby'
  end

  def update_all
    cnt = Book.where(publish: '한빛미디어').update_all(publish: '제이펍')
    render plain: "#{cnt}개의 데이터를 업데이트했습니다."
  end

  def update_all2
    cnt = Book.order(:published).limit(5)
      .update_all('price = price * 0.8')
    render plain: "#{cnt}개의 데이터를 업데이트했습니다."
  end

  def destroy
    Book.delete(params[:id])
    # ...생략...
  end

  def destroy_all
    Book.destroy_all(['publish <> ?', '제이펍'])
    render plain: '제거 완료'
  end

  def transact
      Book.transaction do
        b1 = Book.new({isbn: '978-4-7741-4223-0',
          title: 'Ruby 포켓 레퍼런스',
          price: 2000, publish: '제이펍', published: '2011-01-01'})
        b1.save!
        raise '예외 발생: 모든 처리를 취소합니다.'
        b2 = Book.new({isbn: '978-4-7741-4223-2',
          title: 'Tomcat 포켓 레퍼런스',
          price: 2500, publish: '제이펍', published: '2011-01-01'})
        b2.save!
      end
      render plain: '트랜잭션에 성공했습니다.'
    rescue => e
      render plain: e.message
  end

  # 검색 필드를 출력하기 위한 액션
  def keywd
    @search = SearchKeyword.new
  end

  # [검색] 버튼을 클릭한 경우에 실행되는 액션
  def keywd_process
    # 입력된 값을 기반으로 모델 객체를 생성
    # @search = SearchKeyword.new(params[:search_keyword])
    @search = SearchKeyword.new
    @search.keyword = params[:search_keyword]
    # 검사를 실행(조건을 만족하면 키워드를 만족하지 않으면 오류를 출력)
    if @search.valid?
      render plain: @search.keyword
    else
      render plain: @search.errors.full_messages[0]
    end
  end

  def belongs
    @review = Review.find(3)
  end

  def hasmany
    @book = Book.find_by(isbn: '978-4-7741-5878-5')
  end

  def hasone
    @user = User.find_by(username: 'arint')
  end

  def has_and_belongs
    @book = Book.find_by(isbn: '978-4-7741-5611-8')
  end

  def has_many_through
    @user = User.find_by(username: 'hasat')
  end

  def cache_counter
    @user = User.find(1)
    render plain: @user.reviews.size
  end

  def memorize
    @book = Book.find(1)
    # 도서 정보와 관련된 메모를 등록
    @memo = @book.memos.build({ body: '이후에 구매' })
    if @memo.save
      render plain: '메모를 작성했습니다.'
    else
      render plain: @memo.errors.full_messages[0]
    end
  end

  def assoc_join
    @books = Book.joins(:reviews, :authors).
      order('books.title, reviews.updated_at').
      select('books.*, reviews.body, authors.name')
  end

  def assoc_join2
    @books = Book.joins(reviews: :user).
      select('books.*, reviews.body, users.username')
  end

  def assoc_join3
    @books = Book.joins('LEFT JOIN reviews ON reviews.book_id = books.id').
      select('books.*, reviews.body')
  end

  def assoc_includes
    @books = Book.includes(:authors).all
  end
  
end
