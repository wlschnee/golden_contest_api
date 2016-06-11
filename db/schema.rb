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

ActiveRecord::Schema.define(version: 20160611123437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "factoids", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.string   "image_url"
    t.text     "fact_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_factoids_on_game_id", using: :btree
    t.index ["user_id"], name: "index_factoids_on_user_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.datetime "game_time"
    t.string   "opponent"
    t.integer  "nd_score"
    t.integer  "opp_score"
    t.string   "bonus_question"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "guesses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "nd_score"
    t.integer  "opp_score"
    t.string   "bonus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_guesses_on_game_id", using: :btree
    t.index ["user_id"], name: "index_guesses_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "registration_token"
    t.boolean  "email_reminders",    default: false
    t.boolean  "email_updates",      default: false
    t.boolean  "admin",              default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

end
