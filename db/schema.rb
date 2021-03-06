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

ActiveRecord::Schema.define(version: 20171202150816) do

  create_table "courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "body",       limit: 65535
    t.datetime "delivery"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "price",                    default: 0
    t.text     "image",      limit: 65535
    t.integer  "stock",                    default: 0
    t.integer  "project_id",               default: 0
    t.index ["project_id"], name: "index_courses_on_project_id", using: :btree
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "planner_id"
    t.integer  "target_fig"
    t.date     "end_time"
    t.string   "title",                    null: false
    t.text     "image",      limit: 65535
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "supporters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",     default: 0
    t.integer  "course_id",   default: 0
    t.string   "name",        default: ""
    t.string   "gender",      default: ""
    t.date     "birthday"
    t.string   "mobile",      default: ""
    t.string   "postal_code", default: ""
    t.string   "region",      default: ""
    t.string   "city",        default: ""
    t.string   "block",       default: ""
    t.string   "building",    default: "なし"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["course_id"], name: "index_supporters_on_course_id", using: :btree
    t.index ["user_id"], name: "index_supporters_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                default: "", null: false
    t.string   "encrypted_password",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "name"
    t.text     "image",                  limit: 65535
    t.string   "location"
    t.string   "birthday"
    t.string   "gender"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "courses", "projects"
  add_foreign_key "supporters", "courses"
  add_foreign_key "supporters", "users"
end
