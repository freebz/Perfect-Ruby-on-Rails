# 리스트 5-109 xxxxx_add_birth_to_authors.rb

class AddBirthToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :birth, :date
  end
end
