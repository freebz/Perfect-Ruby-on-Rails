# 리스트 5-115 schema.rb

ActiveRecord::Schema.define(version: 2022_01_02_164149) do

  create_table "authors", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.date "birth"
    t.text "address"
    t.string "ctype"
    t.binary "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_authors_on_user_id"
  end

  create_table "authors_books", id: false, force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id", null: false
  end

  # ...생략...
end
