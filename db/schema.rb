# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_04_26_205629) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street_name"
    t.string "building_number"
    t.string "complement"
    t.bigint "neighbor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lng", precision: 10, scale: 6
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable"
    t.index ["neighbor_id"], name: "index_addresses_on_neighbor_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "enrollments", force: :cascade do |t|
    t.string "obs"
    t.integer "price_cents"
    t.datetime "expiration"
    t.boolean "is_active"
    t.bigint "plan_id", null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_enrollments_on_customer_id"
    t.index ["plan_id"], name: "index_enrollments_on_plan_id"
  end

  create_table "examinations", force: :cascade do |t|
    t.datetime "expiration"
    t.bigint "instructor_id", null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_examinations_on_customer_id"
    t.index ["instructor_id"], name: "index_examinations_on_instructor_id"
  end

  create_table "gym_plans", force: :cascade do |t|
    t.string "name"
    t.integer "price_cents"
    t.datetime "expiration"
    t.boolean "is_active"
    t.bigint "gym_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_gym_plans_on_gym_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "admin_id", null: false
    t.index ["admin_id"], name: "index_gyms_on_admin_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "gym_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_instructors_on_email", unique: true
    t.index ["gym_id"], name: "index_instructors_on_gym_id"
    t.index ["reset_password_token"], name: "index_instructors_on_reset_password_token", unique: true
  end

  create_table "measures", force: :cascade do |t|
    t.string "body_part"
    t.integer "value"
    t.bigint "examination_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["examination_id"], name: "index_measures_on_examination_id"
  end

  create_table "neighbors", force: :cascade do |t|
    t.string "name"
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_neighbors_on_city_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recepcionists", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "gym_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_recepcionists_on_email", unique: true
    t.index ["gym_id"], name: "index_recepcionists_on_gym_id"
    t.index ["reset_password_token"], name: "index_recepcionists_on_reset_password_token", unique: true
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "subscription_plans", force: :cascade do |t|
    t.string "name"
    t.integer "price_cents", default: 0, null: false
    t.datetime "expiration"
    t.bigint "super_admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["super_admin_id"], name: "index_subscription_plans_on_super_admin_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "price_cents", default: 0, null: false
    t.datetime "expiration"
    t.bigint "gym_id", null: false
    t.bigint "subscription_plan_id", null: false
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gym_id"], name: "index_subscriptions_on_gym_id"
    t.index ["subscription_plan_id"], name: "index_subscriptions_on_subscription_plan_id"
  end

  create_table "super_admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_super_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_super_admins_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "neighbors"
  add_foreign_key "cities", "states"
  add_foreign_key "enrollments", "customers"
  add_foreign_key "enrollments", "plans"
  add_foreign_key "examinations", "customers"
  add_foreign_key "examinations", "instructors"
  add_foreign_key "gym_plans", "gyms"
  add_foreign_key "gyms", "admins"
  add_foreign_key "measures", "examinations"
  add_foreign_key "neighbors", "cities"
  add_foreign_key "states", "countries"
  add_foreign_key "subscription_plans", "super_admins"
  add_foreign_key "subscriptions", "gyms"
  add_foreign_key "subscriptions", "subscription_plans"
end
