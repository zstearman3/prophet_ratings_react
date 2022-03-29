# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_23_140853) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_designations", force: :cascade do |t|
    t.string "name", null: false
    t.string "abbreviation", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["abbreviation"], name: "index_class_designations_on_abbreviation", unique: true
    t.index ["name"], name: "index_class_designations_on_name", unique: true
  end

  create_table "conferences", force: :cascade do |t|
    t.string "name", null: false
    t.string "nickname", null: false
    t.string "abbreviation", null: false
    t.string "logo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["abbreviation"], name: "index_conferences_on_abbreviation", unique: true
    t.index ["name"], name: "index_conferences_on_name", unique: true
    t.index ["nickname"], name: "index_conferences_on_nickname", unique: true
  end

  create_table "positions", force: :cascade do |t|
    t.string "name", null: false
    t.string "abbreviation", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["abbreviation"], name: "index_positions_on_abbreviation", unique: true
    t.index ["name"], name: "index_positions_on_name", unique: true
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "year", null: false
    t.date "start_date"
    t.date "end_date"
    t.date "postseason_start_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["year"], name: "index_seasons_on_year", unique: true
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: :cascade do |t|
    t.string "school", null: false
    t.string "nickname", null: false
    t.string "abbreviation", null: false
    t.string "primary_color"
    t.string "secondary_color"
    t.string "city"
    t.bigint "state_id"
    t.bigint "conference_id"
    t.string "espn_url"
    t.string "logo_url"
    t.integer "espn_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["abbreviation"], name: "index_teams_on_abbreviation", unique: true
    t.index ["conference_id"], name: "index_teams_on_conference_id"
    t.index ["school"], name: "index_teams_on_school", unique: true
    t.index ["state_id"], name: "index_teams_on_state_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
