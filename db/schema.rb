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

ActiveRecord::Schema.define(version: 2018_09_03_134551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "antidotes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "comments", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "communications", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "message"
    t.index ["user_id"], name: "index_communications_on_user_id"
  end

  create_table "food_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "horses", force: :cascade do |t|
    t.string "name"
    t.integer "box"
    t.string "formula"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["user_id"], name: "index_horses_on_user_id"
  end

  create_table "medecines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "shoe_makers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "horse_id"
    t.bigint "user_id"
    t.bigint "food_type_id"
    t.bigint "activity_id"
    t.bigint "medecine_id"
    t.bigint "comment_id"
    t.bigint "vetenary_id"
    t.bigint "shoe_maker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "done", default: false, null: false
    t.boolean "doing", default: false, null: false
    t.boolean "daily", default: false, null: false
    t.boolean "weekly", default: false, null: false
    t.boolean "monthly", default: false, null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "food_quantity"
    t.string "activity_week_day"
    t.bigint "antidote_id"
    t.index ["activity_id"], name: "index_tasks_on_activity_id"
    t.index ["antidote_id"], name: "index_tasks_on_antidote_id"
    t.index ["comment_id"], name: "index_tasks_on_comment_id"
    t.index ["food_type_id"], name: "index_tasks_on_food_type_id"
    t.index ["horse_id"], name: "index_tasks_on_horse_id"
    t.index ["medecine_id"], name: "index_tasks_on_medecine_id"
    t.index ["shoe_maker_id"], name: "index_tasks_on_shoe_maker_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
    t.index ["vetenary_id"], name: "index_tasks_on_vetenary_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "phone"
    t.string "address"
    t.string "sur_name"
    t.string "first_name"
    t.string "photo"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vetenaries", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  add_foreign_key "communications", "users"
  add_foreign_key "horses", "users"
  add_foreign_key "tasks", "activities"
  add_foreign_key "tasks", "comments"
  add_foreign_key "tasks", "food_types"
  add_foreign_key "tasks", "horses"
  add_foreign_key "tasks", "medecines"
  add_foreign_key "tasks", "shoe_makers"
  add_foreign_key "tasks", "users"
  add_foreign_key "tasks", "vetenaries"
end
