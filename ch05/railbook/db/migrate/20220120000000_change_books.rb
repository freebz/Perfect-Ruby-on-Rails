# 리스트 5-110 xxxxx_change_books.rb

class ChangeBooks < ActiveRecord::Migration
  def change
    change_table :books do |t|
      t.string :author
      t.remove :published, :cd
      t.index :title
      t.rename :isbn, :isbn_code
    end
  end
end
