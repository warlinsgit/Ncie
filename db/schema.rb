# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_18_225507) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "status"
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id"
    t.integer "user_id"
  end

  create_table "laptops", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.text "description"
    t.string "condition"
    t.string "finish"
    t.string "title"
    t.decimal "price", precision: 5, scale: 2, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "user_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "laptop_id"
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["laptop_id"], name: "index_line_items_on_laptop_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "keywords"
    t.string "brand"
    t.decimal "min_price"
    t.decimal "max_price"
    t.string "finish"
    t.string "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "admin"
    t.string "stripe_id"
    t.string "card_brand"
    t.string "card_exp_month"
    t.string "card_exp_year"
    t.string "card_last4"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
