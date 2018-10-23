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

ActiveRecord::Schema.define(version: 2018_10_23_220208) do

  create_table "brunk_tracings", force: :cascade do |t|
    t.integer "brunk_id"
    t.integer "runner_id"
    t.text "comment"
    t.string "offer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brunks", force: :cascade do |t|
    t.integer "runner_one"
    t.integer "runner_two"
    t.integer "property_one"
    t.integer "property_two"
    t.integer "difference_value"
    t.integer "offer_one"
    t.integer "offer_two"
    t.integer "state_one"
    t.integer "state_two"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "runner_one_id"
    t.integer "runner_two_id"
    t.integer "property_one_id"
    t.integer "property_two_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "type_of_offer"
    t.string "property_type"
    t.integer "runner_id"
    t.integer "country_id"
    t.string "department"
    t.string "city"
    t.string "address"
    t.integer "latitude"
    t.integer "length"
    t.integer "prince"
    t.integer "stratum"
    t.integer "area"
    t.string "blueprints"
    t.integer "number_bedrooms"
    t.integer "number_bathrooms"
    t.integer "levels"
    t.string "state"
    t.boolean "state_favorite"
    t.string "url_video"
    t.string "images"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parking_lot"
    t.boolean "brunk"
    t.string "brunk_type"
  end

  create_table "property_images", force: :cascade do |t|
    t.string "file"
    t.integer "runner_id"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runners", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "code"
    t.integer "country_id"
    t.string "address"
    t.string "city"
    t.string "type_of_identification"
    t.integer "number_document"
    t.integer "mobile"
    t.integer "phone"
    t.integer "age"
    t.integer "number_account_bank"
    t.string "image"
    t.boolean "video_call"
    t.string "name"
    t.string "apellido"
    t.string "provider"
    t.string "acces_token"
    t.string "refresh_token"
    t.string "uid"
    t.string "token"
    t.datetime "expires_at"
    t.string "expires_ats"
    t.integer "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_runners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_runners_on_reset_password_token", unique: true
  end

end
