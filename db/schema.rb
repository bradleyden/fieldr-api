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

ActiveRecord::Schema.define(version: 20170909232643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "games", force: :cascade do |t|
    t.string   "date",                       null: false
    t.string   "home",                       null: false
    t.string   "away",                       null: false
    t.integer  "user_id",                    null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.text     "hroster",       default: [],              array: true
    t.text     "aroster",       default: [],              array: true
    t.integer  "away_runs"
    t.integer  "away_hits"
    t.integer  "away_errors"
    t.integer  "home_runs"
    t.integer  "home_hits"
    t.integer  "home_errors"
    t.integer  "total_innings"
    t.integer  "top_one"
    t.integer  "top_two"
    t.integer  "top_three"
    t.integer  "top_four"
    t.integer  "top_five"
    t.integer  "top_six"
    t.integer  "top_seven"
    t.integer  "top_eight"
    t.integer  "top_nine"
    t.integer  "top_ten"
    t.integer  "top_eleven"
    t.integer  "top_twelve"
    t.integer  "top_thirteen"
    t.integer  "top_fourteen"
    t.integer  "top_fifteen"
    t.integer  "top_sixteen"
    t.integer  "top_seventeen"
    t.integer  "top_eighteen"
    t.integer  "bot_one"
    t.integer  "bot_two"
    t.integer  "bot_three"
    t.integer  "bot_four"
    t.integer  "bot_five"
    t.integer  "bot_six"
    t.integer  "bot_seven"
    t.integer  "bot_eight"
    t.integer  "bot_nine"
    t.integer  "bot_ten"
    t.integer  "bot_eleven"
    t.integer  "bot_twelve"
    t.integer  "bot_thirteen"
    t.integer  "bot_fourteen"
    t.integer  "bot_fifteen"
    t.integer  "bot_sixteen"
    t.integer  "bot_seventeen"
    t.integer  "bot_eighteen"
    t.index ["user_id"], name: "index_games_on_user_id", using: :btree
  end

  create_table "plateappearances", force: :cascade do |t|
    t.integer  "inning"
    t.integer  "batter"
    t.integer  "pitcher"
    t.integer  "runs"
    t.integer  "outs"
    t.integer  "def_error"
    t.string   "outcome"
    t.integer  "game_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "inninghalf"
    t.boolean  "firstbase"
    t.boolean  "secondbase"
    t.boolean  "thirdbase"
    t.boolean  "homebase"
    t.boolean  "firstbasemandefense"
    t.boolean  "secondbasemandefense"
    t.boolean  "thirdbasemandefense"
    t.boolean  "shortstopdefense"
    t.boolean  "leftfielddefense"
    t.boolean  "centerfielddefense"
    t.boolean  "rightfielddefense"
    t.boolean  "catcherdefense"
    t.boolean  "pitcherdefense"
    t.boolean  "homer"
    t.index ["game_id"], name: "index_plateappearances_on_game_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.hstore   "preferences"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "examples", "users"
  add_foreign_key "games", "users"
  add_foreign_key "plateappearances", "games"
end
