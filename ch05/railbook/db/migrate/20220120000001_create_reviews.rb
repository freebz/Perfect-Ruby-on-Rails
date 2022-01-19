# 리스트 5-114 20220120000001_create_reviews.rb

class CreateReviews < ActiveRecord::Migration
  def up
    create_table :reviews do |t|
      # ...생략...
    end
    execute 'ALTER TABLE reviews ADD CONSTRAINT fk_reviews_books FOREIGN KEY (book_id) REFERENCES books(id)'
  end

  def down
    execute 'ALTER TABLE reviews DROP FOREIGN KEY fk_reviews_books'
  end
end
