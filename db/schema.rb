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

ActiveRecord::Schema.define(version: 2019_12_15_073910) do

  create_table "bill_votes", force: :cascade do |t|
    t.integer "bill_id"
    t.integer "user_state_id"
    t.boolean "thumbs_up"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills", force: :cascade do |t|
    t.string "body"
    t.string "title"
    t.string "history"
    t.date "voting_date"
    t.string "status"
    t.string "website"
    t.string "pros"
    t.string "cons"
    t.integer "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constituent_profiles", force: :cascade do |t|
    t.integer "user_state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "representative_profiles", force: :cascade do |t|
    t.integer "user_state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_states", force: :cascade do |t|
    t.integer "user_id"
    t.date "start_date"
    t.date "end_date"
    t.string "role"
    t.integer "district_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bill_id"
    t.boolean "thumbs_up"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
