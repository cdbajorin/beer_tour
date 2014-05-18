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

ActiveRecord::Schema.define(version: 20140518205954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breweries", force: true do |t|
    t.string  "b_name_id"
    t.string  "name"
    t.string  "street_address"
    t.string  "city"
    t.string  "state"
    t.integer "zipcode"
    t.float   "latitude"
    t.float   "longitude"
    t.float   "distance"
    t.boolean "british_ale"
    t.boolean "irish_ale"
    t.boolean "american_ale"
    t.boolean "german_ale"
    t.boolean "belgian_ale"
    t.boolean "european_lager"
    t.boolean "american_lager"
  end

  create_table "tours", force: true do |t|
    t.integer "user_id"
    t.string  "name"
    t.text    "description"
    t.string  "stops"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.integer  "zipcode"
    t.text     "bio"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "full_street_address"
  end

end
