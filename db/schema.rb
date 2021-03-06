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

ActiveRecord::Schema.define(version: 20151104195051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "gallery"
    t.string   "artist_name"
    t.string   "artist_genre"
    t.string   "artis_web"
    t.string   "date_open"
    t.string   "date_close"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "website"
    t.string   "genres"
    t.string   "days_open"
    t.string   "hours_open"
    t.string   "img_uri"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "zip_code"
    t.integer  "user_id"
  end

  add_index "galleries", ["user_id"], name: "index_galleries_on_user_id", using: :btree

  create_table "galleries_users", id: false, force: :cascade do |t|
    t.integer "gallery_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "gallery_rep"
    t.string   "zip_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "galleries", "users"
end
