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

ActiveRecord::Schema.define(version: 20170210210448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string   "title"
    t.text     "instructions"
    t.datetime "assign_date"
    t.datetime "due_date"
    t.float    "duration"
    t.boolean  "visible"
    t.integer  "course_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["course_id"], name: "index_assignments_on_course_id", using: :btree
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.float    "score"
    t.text     "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "submission_id"
    t.index ["submission_id"], name: "index_feedbacks_on_submission_id", using: :btree
  end

  create_table "student_courses", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_student_courses_on_course_id", using: :btree
    t.index ["student_id"], name: "index_student_courses_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "slack"
    t.string   "github"
    t.string   "linkedin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.text     "content"
    t.string   "link"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "student_id"
    t.integer  "assignment_id"
    t.index ["assignment_id"], name: "index_submissions_on_assignment_id", using: :btree
    t.index ["student_id"], name: "index_submissions_on_student_id", using: :btree
  end

  create_table "teacher_courses", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_teacher_courses_on_course_id", using: :btree
    t.index ["teacher_id"], name: "index_teacher_courses_on_teacher_id", using: :btree
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "password_digest"
    t.string   "email"
    t.string   "slack"
    t.string   "github"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "assignments", "courses"
  add_foreign_key "feedbacks", "submissions"
  add_foreign_key "student_courses", "courses"
  add_foreign_key "student_courses", "students"
  add_foreign_key "submissions", "assignments"
  add_foreign_key "submissions", "students"
  add_foreign_key "teacher_courses", "courses"
  add_foreign_key "teacher_courses", "teachers"
end
