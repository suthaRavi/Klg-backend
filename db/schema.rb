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

ActiveRecord::Schema.define(version: 20181209120905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "code",       null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currency_masters", force: :cascade do |t|
    t.string   "currency_id"
    t.string   "currency_code"
    t.string   "currency_description"
    t.boolean  "is_default_currency",  default: false
    t.string   "currency_image_url"
    t.string   "currency_status"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_id", null: false
    t.string   "name",        null: false
    t.string   "address1",    null: false
    t.string   "address2",    null: false
    t.string   "city",        null: false
    t.string   "zipCode",     null: false
    t.string   "country",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "state",       null: false
    t.string   "phone",       null: false
    t.string   "fax",         null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "code",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_categories", force: :cascade do |t|
    t.string   "code",       null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_statuses", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_times", force: :cascade do |t|
    t.integer  "time_sheet_id"
    t.string   "job_id",                         null: false
    t.string   "job_department",                 null: false
    t.string   "job_category",                   null: false
    t.float    "job_time",                       null: false
    t.boolean  "is_overtime",    default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["time_sheet_id"], name: "index_job_times_on_time_sheet_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "job_id",         null: false
    t.string   "name",           null: false
    t.date     "order_date",     null: false
    t.date     "shipping_date",  null: false
    t.date     "shipped_date"
    t.decimal  "estimated_hour", null: false
    t.decimal  "actual_hours"
    t.string   "status",         null: false
    t.string   "previousjob_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "customer_id",    null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "member_id",    null: false
    t.string   "first_name",   null: false
    t.string   "last_name",    null: false
    t.string   "department",   null: false
    t.string   "role",         null: false
    t.string   "reporting_id", null: false
    t.date     "join_date",    null: false
    t.date     "end_date"
    t.string   "category",     null: false
    t.float    "pay_rate",     null: false
    t.string   "status",       null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "code",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "code",       null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "time_sheets", force: :cascade do |t|
    t.string   "first_name", null: false
    t.date     "job_date",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

end
