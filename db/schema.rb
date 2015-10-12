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

ActiveRecord::Schema.define(version: 20151012195140) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.integer  "id_place"
    t.integer  "id_performer"
    t.string   "description"
    t.date     "date"
    t.float    "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "id_user"
    t.string   "favorite_link_type"
    t.integer  "favorite_link_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "image_link_type"
    t.integer  "image_link_id"
    t.string   "url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "id_user"
    t.string   "like_link_type"
    t.integer  "like_link_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "performers", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "genre"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "places", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "description"
    t.string   "website"
    t.integer  "capacity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
