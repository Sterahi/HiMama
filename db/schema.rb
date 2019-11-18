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

ActiveRecord::Schema.define(version: 2019_11_18_175519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clock_events", force: :cascade do |t|
    t.string "event_type"
    t.integer "user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clock_events_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "clock_event_id", null: false
    t.index ["clock_event_id", "user_id"], name: "index_clock_events_users_on_clock_event_id_and_user_id"
    t.index ["user_id", "clock_event_id"], name: "index_clock_events_users_on_user_id_and_clock_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users_clocks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "clock_event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clock_event_id"], name: "index_users_clocks_on_clock_event_id"
    t.index ["user_id"], name: "index_users_clocks_on_user_id"
  end

  add_foreign_key "users_clocks", "clock_events"
  add_foreign_key "users_clocks", "users"
end
