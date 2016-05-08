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

ActiveRecord::Schema.define(version: 20160504164314) do

  create_table "evaluation_t", primary_key: "eval_id", force: :cascade do |t|
    t.string  "eval_name",            limit: 15,  null: false
    t.integer "id_number",            limit: 4,   null: false
    t.string  "tutoring_comments",    limit: 100, null: false
    t.string  "math_module_comments", limit: 100, null: false
    t.string  "math_sw_comments",     limit: 100, null: false
    t.string  "eng_comments",         limit: 100, null: false
    t.string  "eng_sw_comments",      limit: 100, null: false
    t.string  "suggestions",          limit: 100, null: false
  end

  add_index "evaluation_t", ["id_number"], name: "evaluation_fk", using: :btree

  create_table "member_t", primary_key: "id_number", force: :cascade do |t|
    t.string  "password",       limit: 15, null: false
    t.string  "first_name",     limit: 15, null: false
    t.string  "last_name",      limit: 15, null: false
    t.string  "middle_initial", limit: 2
    t.string  "email_address",  limit: 30, null: false
    t.integer "contact_no",     limit: 4,  null: false
    t.date    "attendance",                null: false
    t.string  "type",           limit: 15
    t.string  "committee",      limit: 15
    t.date    "birthday",                  null: false
    t.string  "year_course",    limit: 12, null: false
    t.string  "scholarship",    limit: 15
  end

  create_table "module_t", primary_key: "file_number", force: :cascade do |t|
    t.string "file_name",   limit: 20, null: false
    t.string "subject",     limit: 20
    t.date   "upload_date",            null: false
    t.string "topic",       limit: 20, null: false
    t.string "uploader",    limit: 30, null: false
  end

  create_table "tpr_t", primary_key: "tpr_id", force: :cascade do |t|
    t.integer "week_no",     limit: 4,   null: false
    t.string  "school",      limit: 35,  null: false
    t.integer "file_number", limit: 4,   null: false
    t.integer "id_number",   limit: 4,   null: false
    t.integer "tutee_id",    limit: 4,   null: false
    t.string  "strengths",   limit: 20,  null: false
    t.string  "weaknesses",  limit: 20,  null: false
    t.string  "actions",     limit: 100, null: false
  end

  add_index "tpr_t", ["file_number"], name: "tpr_fk1", using: :btree
  add_index "tpr_t", ["id_number"], name: "tpr_fk2", using: :btree
  add_index "tpr_t", ["tutee_id"], name: "tpr_fk3", using: :btree

  create_table "tutee_t", primary_key: "tutee_id", force: :cascade do |t|
    t.string  "first_name",        limit: 15, null: false
    t.string  "last_name",         limit: 15, null: false
    t.string  "school",            limit: 35, null: false
    t.integer "math_grade",        limit: 4
    t.integer "eng_grade",         limit: 4
    t.string  "address",           limit: 30
    t.string  "father_name",       limit: 30
    t.string  "father_occupation", limit: 10
    t.string  "mother_name",       limit: 30
    t.string  "mother_occupation", limit: 10
    t.string  "ambition",          limit: 15
    t.string  "fav_subject",       limit: 10
    t.string  "fav_food",          limit: 8
    t.string  "fav_color",         limit: 10
    t.string  "fav_movie",         limit: 10
    t.date    "attendance"
    t.string  "current_module",    limit: 20
    t.integer "group_no",          limit: 4,  null: false
  end

  create_table "worksheet_t", primary_key: "worksheet_id", force: :cascade do |t|
    t.integer "file_number",   limit: 4,  null: false
    t.integer "id_number",     limit: 4,  null: false
    t.integer "tutee_id",      limit: 4,  null: false
    t.string  "school",        limit: 35, null: false
    t.integer "score",         limit: 4,  null: false
    t.string  "reached_quota", limit: 1,  null: false
  end

  add_index "worksheet_t", ["file_number"], name: "worksheet_fk1", using: :btree
  add_index "worksheet_t", ["id_number"], name: "worksheet_fk2", using: :btree
  add_index "worksheet_t", ["tutee_id"], name: "worksheet_fk3", using: :btree

  add_foreign_key "evaluation_t", "member_t", column: "id_number", primary_key: "id_number", name: "evaluation_fk"
  add_foreign_key "tpr_t", "member_t", column: "id_number", primary_key: "id_number", name: "tpr_fk2"
  add_foreign_key "tpr_t", "module_t", column: "file_number", primary_key: "file_number", name: "tpr_fk1"
  add_foreign_key "tpr_t", "tutee_t", column: "tutee_id", primary_key: "tutee_id", name: "tpr_fk3"
  add_foreign_key "worksheet_t", "member_t", column: "id_number", primary_key: "id_number", name: "worksheet_fk2"
  add_foreign_key "worksheet_t", "module_t", column: "file_number", primary_key: "file_number", name: "worksheet_fk1"
  add_foreign_key "worksheet_t", "tutee_t", column: "tutee_id", primary_key: "tutee_id", name: "worksheet_fk3"
end
