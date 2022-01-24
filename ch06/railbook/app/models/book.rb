# 리스트 6-5 book.rb

class Book < ApplicationRecord
  # attr_accessible :title, :price, :publish

  after_destroy BookCallbacks.new
  
  after_destroy do |b|
    logger.info('deleted: ' + b.inspect)
  end

  after_destroy :history_book

  private
  def history_book
    logger.info('deleted: ' + self.inspect)
  end

  has_many :reviews
  has_and_belongs_to_many :authors
  has_many :users, through: :reviews
  has_many :memos, as: :memoable
  
  validates :title,
    presence: true,
    length: { minimum: 1, maximum: 100 },
    uniqueness: { scope: :publish }
  validates :price,
    numericality: { only_integer: true, less_than: 10000 }
  validates :publish,
    inclusion:{ in: ['제이펍', '한빛미디어', '지앤선', '인사이트', '길벗'] }
  scope :jpub, -> { where(publish: '제이펍') }
  scope :newer, -> { order(published: :desc) }
  scope :top10, -> { newer.limit(10) }
  scope :whats_new, ->(pub) {
    where(publish: pub).order(published: :desc).limit(5)
  }

  validate :isbn_valid?
  private
  def isbn_valid?
    errors.add(:isbn, '는 올바른 형식이 아닙니다.') unless isbn =~ /\A[0-9]{3}-[0-9]{1}-[0-9]{3,5}-[0-9]{4}-[0-9X]{1}\z/
  end
end
