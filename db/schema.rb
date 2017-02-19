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

ActiveRecord::Schema.define(version: 20170219094947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicant_skills", force: :cascade do |t|
    t.integer  "applicant_id"
    t.integer  "skill_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "applicants", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "email"
    t.string   "location"
    t.text     "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.integer  "applicant_id"
    t.string   "school_name"
    t.string   "degree"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "company_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.integer  "applicant_id"
    t.string   "company_name"
    t.string   "position_title"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "volunteer",      default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "interests", force: :cascade do |t|
    t.integer  "applicant_id"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "applicant_id"
    t.integer  "employer_id"
    t.string   "company_name"
    t.string   "position_title"
    t.string   "company_site"
    t.string   "location"
    t.string   "level"
    t.text     "description"
    t.integer  "compensation"
    t.text     "requirements"
    t.text     "skills"
    t.text     "responsibilities"
    t.text     "perks"
    t.text     "application_link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "applicant_id"
    t.string   "title"
    t.string   "description"
    t.string   "skills"
    t.string   "url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "applicant_id"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "social_profiles", force: :cascade do |t|
    t.integer  "applicant_id"
    t.string   "linkedin"
    t.string   "github"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "slack"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
