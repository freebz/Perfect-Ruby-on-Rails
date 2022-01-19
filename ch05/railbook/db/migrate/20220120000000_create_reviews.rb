# 리스트 5-113 20220120000000_create_reviews.rb

class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      # ...생략...
    end

    reversible do |dir|
      dir.up do
        execute 'ALTER TABLE reviews ADD CONSTRAINT fk_reviews_books FOREIGN KEY (book_id) REFERENCES books(id)'
      end
      dir.down do
        execute 'ALTER TABLE reviews DROP FOREIGN KEY fk_reviews_books'
      end
    end
  end
end
