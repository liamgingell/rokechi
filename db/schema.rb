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

ActiveRecord::Schema[7.1].define(version: 2025_03_20_060541) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "film_locations", force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "location_id", null: false
    t.string "scene_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_film_locations_on_film_id"
    t.index ["location_id"], name: "index_film_locations_on_location_id"
  end

  create_table "film_trivia", force: :cascade do |t|
    t.bigint "film_location_id", null: false
    t.bigint "user_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_location_id"], name: "index_film_trivia_on_film_location_id"
    t.index ["user_id"], name: "index_film_trivia_on_user_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "director"
    t.integer "release_year"
    t.text "description"
    t.string "poster_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_locations", force: :cascade do |t|
    t.bigint "list_id", null: false
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_list_locations_on_list_id"
    t.index ["location_id"], name: "index_list_locations_on_location_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.text "description"
    t.string "image_url"
    t.boolean "verified"
    t.integer "submitted_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "location_id", null: false
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_reviews_on_location_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "trip_locations", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.bigint "location_id", null: false
    t.integer "visit_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_trip_locations_on_location_id"
    t.index ["trip_id"], name: "index_trip_locations_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "film_locations", "films"
  add_foreign_key "film_locations", "locations"
  add_foreign_key "film_trivia", "film_locations"
  add_foreign_key "film_trivia", "users"
  add_foreign_key "list_locations", "lists"
  add_foreign_key "list_locations", "locations"
  add_foreign_key "lists", "users"
  add_foreign_key "reviews", "locations"
  add_foreign_key "reviews", "users"
  add_foreign_key "trip_locations", "locations"
  add_foreign_key "trip_locations", "trips"
  add_foreign_key "trips", "users"
end
