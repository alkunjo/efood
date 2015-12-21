# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151221033723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caterings", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.integer  "capacity"
    t.string   "username"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "food_caterings_id"
    t.integer  "package_caterings_id"
  end

  add_index "caterings", ["email"], name: "index_caterings_on_email", unique: true, using: :btree
  add_index "caterings", ["reset_password_token"], name: "index_caterings_on_reset_password_token", unique: true, using: :btree

  create_table "food_caterings", force: :cascade do |t|
    t.integer  "price"
    t.text     "additional"
    t.integer  "food_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "catering_id"
  end

  add_index "food_caterings", ["catering_id"], name: "index_food_caterings_on_catering_id", using: :btree
  add_index "food_caterings", ["food_id"], name: "index_food_caterings_on_food_id", using: :btree

  create_table "food_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "food_types_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "foods", ["food_types_id"], name: "index_foods_on_food_types_id", using: :btree

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "package_caterings", force: :cascade do |t|
    t.integer  "price"
    t.text     "additional"
    t.integer  "package_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "catering_id"
  end

  add_index "package_caterings", ["catering_id"], name: "index_package_caterings_on_catering_id", using: :btree
  add_index "package_caterings", ["package_id"], name: "index_package_caterings_on_package_id", using: :btree

  create_table "package_details", force: :cascade do |t|
    t.integer  "package_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "food_id"
  end

  add_index "package_details", ["food_id"], name: "index_package_details_on_food_id", using: :btree
  add_index "package_details", ["package_id"], name: "index_package_details_on_package_id", using: :btree

  create_table "packages", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "package_caterings", "caterings"
end
