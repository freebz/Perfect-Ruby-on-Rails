# 리스트 5-108 xxxxx_create_books.rb

class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :isbn, limit: 17, null: false
      t.string :title, limit: 100, null: false
      t.decimal :price, precision: 5, scale: 0
      t.string :publish, limit: 20, default: '제이펍'
      t.date :published
      t.boolean :cd

      t.timestamps
    end
  end
end
