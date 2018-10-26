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

ActiveRecord::Schema.define(version: 2018_10_12_144122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.text "cohort_name"
    t.date "start_date"
    t.date "end_date"
    t.integer "instructor_id"
  end

  create_table "courses", force: :cascade do |t|
    t.text "course_name"
    t.integer "total_hours"
  end

  create_table "instructors", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.integer "age"
    t.money "salary", scale: 2
    t.text "highest_comp_ed"
  end

  create_table "students", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.integer "age"
    t.text "highest_level_of_education"
    t.integer "cohort_id"
  end

  create_table "students_cohorts", force: :cascade do |t|
    t.integer "student_id"
    t.integer "cohort_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cohorts", "instructors"
  add_foreign_key "students", "cohorts"
end
