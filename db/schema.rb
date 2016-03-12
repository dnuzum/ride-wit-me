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

ActiveRecord::Schema.define(version: 20160312004713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "locations_users", ["location_id"], name: "index_locations_users_on_location_id", using: :btree
  add_index "locations_users", ["user_id"], name: "index_locations_users_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "provider_id"
    t.string   "provider_hash"
    t.string   "email"
    t.string   "name"
    t.text     "about"
    t.text     "favorite"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "picture"
    t.string   "reset_code"
    t.datetime "expires_at"
  end

  add_foreign_key "locations_users", "locations"
  add_foreign_key "locations_users", "users"
end
