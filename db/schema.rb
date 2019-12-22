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

ActiveRecord::Schema.define(version: 2019_12_21_232859) do

  create_table "areas", force: :cascade do |t|
    t.string "area_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "evaluation"
    t.string "comment"
    t.integer "gym_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_comments_on_gym_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "address"
    t.string "work_time"
    t.string "price"
    t.string "gym_url"
    t.integer "area_id", null: false
    t.integer "created_user_id", null: false
    t.integer "updated_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["area_id"], name: "index_gyms_on_area_id"
    t.index ["created_user_id"], name: "index_gyms_on_created_user_id"
    t.index ["updated_user_id"], name: "index_gyms_on_updated_user_id"
  end

  create_table "nices", force: :cascade do |t|
    t.integer "comment_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comment_id"], name: "index_nices_on_comment_id"
    t.index ["user_id"], name: "index_nices_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "gyms"
  add_foreign_key "comments", "users"
  add_foreign_key "gyms", "areas"
  add_foreign_key "gyms", "users", column: "created_user_id"
  add_foreign_key "gyms", "users", column: "updated_user_id"
  add_foreign_key "nices", "comments"
  add_foreign_key "nices", "users"
end
