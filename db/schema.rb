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

ActiveRecord::Schema.define(version: 2019_10_26_052546) do

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "usertype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_histories", force: :cascade do |t|
    t.date "effective_date"
    t.integer "admin_course_id"
    t.boolean "status"
    t.text "short_title"
    t.text "long_title"
    t.integer "min_units"
    t.integer "max_units"
    t.float "progress_units"
    t.string "grading"
    t.boolean "last_course"
    t.integer "enrollment_unit_calc"
    t.text "description"
    t.integer "history_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_histories_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.date "effective_date"
    t.integer "admin_course_id"
    t.boolean "status"
    t.text "short_title"
    t.text "long_title"
    t.integer "min_units"
    t.integer "max_units"
    t.float "progress_units"
    t.string "grading"
    t.boolean "last_course"
    t.integer "enrollment_unit_calc"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offering_histories", force: :cascade do |t|
    t.integer "admin_course_id"
    t.integer "offering_number"
    t.string "subject"
    t.string "catalogue_num"
    t.string "campus"
    t.string "schedule_course"
    t.integer "course_id"
    t.integer "course_history_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_history_id"], name: "index_offering_histories_on_course_history_id"
  end

  create_table "offerings", force: :cascade do |t|
    t.integer "admin_course_id"
    t.integer "offering_number"
    t.string "subject"
    t.string "catalogue_num"
    t.string "campus"
    t.string "schedule_course"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_offerings_on_course_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.date "effective_date"
    t.string "name"
    t.boolean "status"
    t.text "description"
    t.string "short_description"
    t.text "formal_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ownerships", force: :cascade do |t|
    t.integer "percentage_owned"
    t.integer "offering_id"
    t.integer "organisation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offering_id"], name: "index_ownerships_on_offering_id"
    t.index ["organisation_id"], name: "index_ownerships_on_organisation_id"
  end

end
