# 리스트 5-42 20220102164149_create_members.rb

class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.integer :lock_version, default: 0

      t.timestamps
    end
  end
end
