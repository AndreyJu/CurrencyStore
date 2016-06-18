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

ActiveRecord::Schema.define(version: 20160524141740) do

  create_table "bank_details", force: :cascade do |t|
    t.integer  "wallet_id"
    t.string   "bank_details"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "bank_details", ["wallet_id"], name: "index_bank_details_on_wallet_id"

  create_table "currencies", force: :cascade do |t|
    t.integer  "wallet_id"
    t.integer  "currency_type_id"
    t.string   "name",             limit: 64
    t.string   "code",             limit: 16
    t.integer  "cost",                        default: 0
    t.text     "description",                 default: ""
    t.string   "logo",                        default: ""
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "currencies", ["code"], name: "index_currencies_on_code"
  add_index "currencies", ["currency_type_id"], name: "index_currencies_on_currency_type_id"
  add_index "currencies", ["name"], name: "index_currencies_on_name"
  add_index "currencies", ["wallet_id"], name: "index_currencies_on_wallet_id"

  create_table "currency_types", force: :cascade do |t|
    t.string   "id_currency"
    t.string   "currency_type", limit: 32, default: ""
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "currency_types", ["currency_type"], name: "index_currency_types_on_currency_type"

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "wallets", force: :cascade do |t|
    t.string   "wallet_name",              limit: 32, default: ""
    t.float    "amount"
    t.text     "description",                         default: ""
    t.float    "commission_for_deposit"
    t.float    "commission_for_deduction"
    t.float    "transaction_costs"
    t.float    "max_tranche"
    t.float    "min_tranche"
    t.boolean  "activity_status",                     default: false
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

end
