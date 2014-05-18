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

ActiveRecord::Schema.define(version: 20140518170512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breweries", force: true do |t|
    t.string  "breweryId"
    t.string  "name"
    t.string  "streetAddress"
    t.string  "city"
    t.string  "state"
    t.integer "zipcode"
    t.float   "latitude"
    t.float   "longitude"
    t.float   "distance"
    t.boolean "britishAle"
    t.boolean "irishAle"
    t.boolean "americanAle"
    t.boolean "germanAle"
    t.boolean "belgianAle"
    t.boolean "europeanLager"
    t.boolean "americanLager"
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
    t.string   "streetAddress"
    t.string   "city"
    t.string   "state"
    t.string   "fullStreetAddress"
  end

end
