# 리스트 5-111 20220120000000_create_join_table_author_book.rb

class CreateJoinTableAuthorBook < ActiveRecord::Migration
  def change
    create_join_table :authors, :books
  end
end
