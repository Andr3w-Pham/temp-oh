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

ActiveRecord::Schema.define(version: 2018_07_23_080628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "host_id"
    t.bigint "dj_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.date "date"
    t.string "time"
    t.float "latitude"
    t.float "longitude"
    t.index ["dj_id"], name: "index_bookings_on_dj_id"
    t.index ["host_id"], name: "index_bookings_on_host_id"
  end

  create_table "djs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "location"
    t.decimal "rate"
    t.string "image"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_djs_on_user_id"
  end

  create_table "hosts", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "image"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_hosts_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "host_id"
    t.bigint "dj_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
    t.text "comment"
    t.index ["dj_id"], name: "index_reviews_on_dj_id"
    t.index ["host_id"], name: "index_reviews_on_host_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.text "description"
    t.string "image"
    t.string "audio"
    t.bigint "dj_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dj_id"], name: "index_songs_on_dj_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "djs"
  add_foreign_key "bookings", "hosts"
  add_foreign_key "djs", "users"
  add_foreign_key "hosts", "users"
  add_foreign_key "reviews", "djs"
  add_foreign_key "reviews", "hosts"
  add_foreign_key "songs", "djs"
end
