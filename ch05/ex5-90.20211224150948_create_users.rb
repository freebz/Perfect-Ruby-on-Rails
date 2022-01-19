# 리스트 5-90 20211224150948_create_users.rb

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      # ...생략...
      t.string :roles
      t.integer :reviews_count, default: 0
      t.timestamps
    end
  end
end
