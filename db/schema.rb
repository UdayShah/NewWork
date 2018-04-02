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

ActiveRecord::Schema.define(version: 20180402191713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "province"
    t.string "city"
    t.string "street"
    t.string "building_number"
    t.string "apartment_number"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posting_responses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "posting_id"
    t.integer "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postings", force: :cascade do |t|
    t.integer "posting_id"
    t.integer "employer_id"
    t.integer "location_id"
    t.string "job_name"
    t.string "job_description"
    t.integer "positions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "required_skills", force: :cascade do |t|
    t.integer "posting_id"
    t.integer "skill_id"
    t.integer "skill_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer "skill_id"
    t.string "skill_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skillsets", force: :cascade do |t|
    t.integer "user_id"
    t.integer "skill_id"
    t.integer "skill_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "email"
    t.integer "location_id"
    t.string "profile_pic"
    t.string "resume"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "employers", "users"
  add_foreign_key "posting_responses", "postings"
  add_foreign_key "posting_responses", "users"
  add_foreign_key "postings", "employers"
  add_foreign_key "postings", "locations"
  add_foreign_key "required_skills", "postings"
  add_foreign_key "required_skills", "skills"
  add_foreign_key "skillsets", "skills"
  add_foreign_key "skillsets", "users"
  add_foreign_key "users", "locations"
end
