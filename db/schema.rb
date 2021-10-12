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

ActiveRecord::Schema.define(version: 2021_10_12_154805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "associations", force: :cascade do |t|
    t.integer "associations_quality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.integer "length"
    t.integer "width"
    t.integer "width_in_squares"
    t.integer "length_in_squares"
    t.integer "width_in_cm"
    t.integer "length_in_cm"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.integer "shoe_size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_gardens_on_users_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.integer "temperature_max"
    t.integer "temperature_min"
    t.integer "harvest_day_after_planting"
    t.integer "length"
    t.integer "width"
    t.integer "sunshine"
    t.integer "humidity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "square_tasks", force: :cascade do |t|
    t.boolean "done"
    t.date "done_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "squares", force: :cascade do |t|
    t.integer "length"
    t.integer "width"
    t.date "planting_date"
    t.date "harvest_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "gardens_id"
    t.bigint "plants_id"
    t.index ["gardens_id"], name: "index_squares_on_gardens_id"
    t.index ["plants_id"], name: "index_squares_on_plants_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "delay_after_creation"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

end
