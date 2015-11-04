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

ActiveRecord::Schema.define(version: 20151021193536) do

  create_table "games", force: :cascade do |t|
    t.string   "map",        limit: 255
    t.string   "score",      limit: 255
    t.string   "videolink",  limit: 255
    t.integer  "match_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "games", ["match_id"], name: "index_games_on_match_id", using: :btree

  create_table "groupmatches", force: :cascade do |t|
    t.integer  "match_id",    limit: 4
    t.integer  "hometeam_id", limit: 4
    t.integer  "awayteam_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "groupmatches", ["awayteam_id"], name: "index_groupmatches_on_awayteam_id", using: :btree
  add_index "groupmatches", ["hometeam_id"], name: "index_groupmatches_on_hometeam_id", using: :btree
  add_index "groupmatches", ["match_id"], name: "index_groupmatches_on_match_id", using: :btree

  create_table "matches", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.date     "matchdate"
    t.integer  "matchorder",    limit: 4
    t.integer  "tournament_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "matches", ["tournament_id"], name: "index_matches_on_tournament_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "team_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "sponsor",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "org",        limit: 255
    t.date     "datestart"
    t.date     "datefinish"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
