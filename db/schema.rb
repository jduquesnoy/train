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

ActiveRecord::Schema.define(version: 2020_12_28_140327) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "list_id", null: false
    t.bigint "user_id", null: false
    t.float "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_id"], name: "index_comments_on_list_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "factions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "list_units", force: :cascade do |t|
    t.bigint "unit_id", null: false
    t.bigint "list_id", null: false
    t.integer "point"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["list_id"], name: "index_list_units_on_list_id"
    t.index ["unit_id"], name: "index_list_units_on_unit_id"
  end

  create_table "lists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "point_category"
    t.integer "point_number"
    t.float "note"
    t.bigint "subfaction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subfaction_id"], name: "index_lists_on_subfaction_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "subfactions", force: :cascade do |t|
    t.string "name"
    t.bigint "faction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["faction_id"], name: "index_subfactions_on_faction_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.integer "point"
    t.string "image"
    t.bigint "subfaction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subfaction_id"], name: "index_units_on_subfaction_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "lists"
  add_foreign_key "comments", "users"
  add_foreign_key "list_units", "lists"
  add_foreign_key "list_units", "units"
  add_foreign_key "lists", "subfactions"
  add_foreign_key "lists", "users"
  add_foreign_key "subfactions", "factions"
  add_foreign_key "units", "subfactions"
end
