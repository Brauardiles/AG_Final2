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

ActiveRecord::Schema.define(version: 2020_09_06_001033) do

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "product"
    t.string "amount"
    t.text "description"
    t.integer "user_id"
    t.integer "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_businesses_on_contact_id"
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.string "profesion"
    t.integer "phone"
    t.string "i_email"
    t.integer "mobile_phone"
    t.string "p_email"
    t.integer "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_contacts_on_school_id"
  end

  create_table "schools", force: :cascade do |t|
    t.integer "Rut"
    t.integer "rol_data_base"
    t.string "name"
    t.integer "type_of_school"
    t.boolean "integration"
    t.integer "region"
    t.string "comuna"
    t.string "adress"
    t.integer "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Nickname"
    t.integer "Area"
    t.string "Position"
    t.boolean "admin", default: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
