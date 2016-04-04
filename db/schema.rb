\d# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160403230223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "disposals", force: :cascade do |t|
    t.string   "method_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "disposals", ["user_id"], name: "index_disposals_on_user_id", using: :btree

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.date     "purchased_date"
    t.date     "expiration_date"
    t.date     "remind_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "storage_id"
    t.integer  "disposal_id"
  end

  add_index "foods", ["disposal_id"], name: "index_foods_on_disposal_id", using: :btree
  add_index "foods", ["storage_id"], name: "index_foods_on_storage_id", using: :btree

  create_table "storages", force: :cascade do |t|
    t.string   "storage_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "storages", ["user_id"], name: "index_storages_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "disposals", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "foods", "disposals"
  add_foreign_key "foods", "storages"
  add_foreign_key "storages", "users"
end
