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

ActiveRecord::Schema.define(version: 2021_10_04_164953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invoices", force: :cascade do |t|
    t.bigint "reservation_id", null: false
    t.boolean "paid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reservation_id"], name: "index_invoices_on_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "ship_id", null: false
    t.integer "price"
    t.integer "rating"
    t.text "review"
    t.string "negotiation_status"
    t.date "reservation_start"
    t.date "reservation_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ship_id"], name: "index_reservations_on_ship_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "ships", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "max_people"
    t.integer "min_price"
    t.integer "max_price"
    t.string "type"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
    t.index ["user_id"], name: "index_ships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "ssn"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "phone_number"
    t.boolean "owner"
    t.string "country"
    t.string "city"
    t.string "address"
    t.date "birth_date"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "invoices", "reservations"
  add_foreign_key "reservations", "ships"
  add_foreign_key "reservations", "users"
  add_foreign_key "ships", "users"
end
