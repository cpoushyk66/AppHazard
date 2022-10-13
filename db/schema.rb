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

ActiveRecord::Schema[7.0].define(version: 2022_10_13_184031) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conditions", force: :cascade do |t|
    t.string "name", null: false
    t.string "limitations", null: false
    t.string "duration", null: false
    t.boolean "treatable", null: false
    t.boolean "curable", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnoses", force: :cascade do |t|
    t.integer "medical_profile_id", null: false
    t.integer "condition_id", null: false
    t.integer "doctor_id"
    t.string "notes", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.decimal "weight", null: false
    t.decimal "height", null: false
    t.string "hair_color", null: false
    t.string "eye_color", null: false
    t.string "race", null: false
    t.string "sex", null: false
    t.string "gender", null: false
    t.string "blood_type", null: false
    t.date "birth_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name", null: false
    t.string "most_common_usage", null: false
    t.string "drug_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "medical_profile_id", null: false
    t.integer "medicine_id", null: false
    t.integer "prescriber_id"
    t.string "prescribed_for", null: false
    t.string "dosage", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "middle_names"
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.string "image", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "password_digest", null: false
    t.integer "admin_level", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
