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

ActiveRecord::Schema.define(version: 20191209113902) do

  create_table "advises", force: :cascade do |t|
    t.string "content"
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_advises_on_post_id"
    t.index ["user_id"], name: "index_advises_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "title"
    t.string "customer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_tag2s", force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_tag2s_on_post_id"
    t.index ["tag2_id"], name: "index_post_tag2s_on_tag2_id"
  end

  create_table "post_tags", force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_tags_on_post_id"
    t.index ["tag_id"], name: "index_post_tags_on_tag_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "video"
    t.text "comment"
    t.string "gender"
    t.integer "age"
    t.string "genre"
    t.string "level"
    t.integer "user_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag2s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag3s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag4s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_tag3s", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tag3_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag3_id"], name: "index_user_tag3s_on_tag3_id"
    t.index ["user_id"], name: "index_user_tag3s_on_user_id"
  end

  create_table "user_tag4s", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tag4_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag4_id"], name: "index_user_tag4s_on_tag4_id"
    t.index ["user_id"], name: "index_user_tag4s_on_user_id"
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
    t.integer "age"
    t.text "memo"
    t.integer "best_score"
    t.string "image"
    t.string "gender"
    t.integer "best_score_future"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
