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

ActiveRecord::Schema.define(version: 20160227011908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_customers", force: :cascade do |t|
    t.integer  "business_id"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "business_customers", ["business_id"], name: "index_business_customers_on_business_id", using: :btree
  add_index "business_customers", ["customer_id"], name: "index_business_customers_on_customer_id", using: :btree

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "happenings", force: :cascade do |t|
    t.integer  "business_id"
    t.string   "title"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "happenings", ["business_id"], name: "index_happenings_on_business_id", using: :btree

  add_foreign_key "business_customers", "businesses"
  add_foreign_key "business_customers", "customers"
  add_foreign_key "happenings", "businesses"
end