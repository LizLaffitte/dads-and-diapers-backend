# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_15_002727) do

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "lat"
    t.float "long"
    t.float "mens_chance"
    t.float "womens_chance"
    t.float "isolated_chance"
    t.float "clean_chance"
    t.float "working_chance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "name"
    t.integer "listing_id", null: false
    t.integer "user_id", null: false
    t.boolean "mens"
    t.boolean "womens"
    t.boolean "isolated"
    t.boolean "working"
    t.boolean "clean"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_reviews_on_listing_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reviews", "listings"
  add_foreign_key "reviews", "users"
end
