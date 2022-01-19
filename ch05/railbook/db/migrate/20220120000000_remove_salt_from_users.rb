# 리스트 5-112 20220120000000_remove_salt_from_users.rb

class RemoveSaltFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :salt, :string
    # "remove_column :users, :salt"만으로는 자료형이 불명확하므로 롤백 불가
  end
end
