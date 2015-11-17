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

ActiveRecord::Schema.define(version: 20151117165611) do

  create_table "food_caterings", force: :cascade do |t|
    t.integer  "price"
    t.text     "additional"
    t.integer  "food_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "food_caterings", ["food_id"], name: "index_food_caterings_on_food_id"

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

  add_index "foods", ["food_types_id"], name: "index_foods_on_food_types_id"

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "package_caterings", force: :cascade do |t|
    t.integer  "price"
    t.text     "additional"
    t.integer  "package_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "package_caterings", ["package_id"], name: "index_package_caterings_on_package_id"

  create_table "package_details", force: :cascade do |t|
    t.integer  "package_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "package_details", ["package_id"], name: "index_package_details_on_package_id"

  create_table "packages", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
