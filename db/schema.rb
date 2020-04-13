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

ActiveRecord::Schema.define(version: 20200411152548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anamneses", force: :cascade do |t|
    t.integer  "pupil_id"
    t.string   "recomendation"
    t.string   "surgery"
    t.string   "squeeze_or_burning"
    t.string   "bone_problem"
    t.string   "medicine"
    t.string   "contraindication"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["pupil_id"], name: "index_anamneses_on_pupil_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.integer  "train_id"
    t.string   "name",        default: [],              array: true
    t.integer  "reps",        default: [],              array: true
    t.integer  "series",      default: [],              array: true
    t.string   "video",       default: [],              array: true
    t.string   "observation"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["train_id"], name: "index_exercises_on_train_id", using: :btree
  end

  create_table "pupil_trainers", force: :cascade do |t|
    t.integer  "pupil_id"
    t.integer  "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pupil_id"], name: "index_pupil_trainers_on_pupil_id", using: :btree
    t.index ["trainer_id"], name: "index_pupil_trainers_on_trainer_id", using: :btree
  end

  create_table "pupils", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "city_id"
    t.string   "name"
    t.integer  "age"
    t.string   "photo"
    t.string   "telephone"
    t.integer  "anamnesis_id"
    t.index ["anamnesis_id"], name: "index_pupils_on_anamnesis_id", using: :btree
    t.index ["city_id"], name: "index_pupils_on_city_id", using: :btree
    t.index ["email"], name: "index_pupils_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_pupils_on_reset_password_token", unique: true, using: :btree
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "pupil_id"
    t.integer  "trainer_id"
    t.integer  "value"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pupil_id"], name: "index_ratings_on_pupil_id", using: :btree
    t.index ["trainer_id"], name: "index_ratings_on_trainer_id", using: :btree
  end

  create_table "trainers", force: :cascade do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "city_id"
    t.string   "name"
    t.string   "photo"
    t.string   "telephone"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "cref"
    t.string   "status",                 default: "pendent"
    t.date     "payment_validate"
    t.index ["city_id"], name: "index_trainers_on_city_id", using: :btree
    t.index ["email"], name: "index_trainers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "trains", force: :cascade do |t|
    t.integer  "trainer_id"
    t.integer  "pupil_id"
    t.string   "day_of_week"
    t.string   "grouping"
    t.date     "validate_date"
    t.string   "modality"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["pupil_id"], name: "index_trains_on_pupil_id", using: :btree
    t.index ["trainer_id"], name: "index_trains_on_trainer_id", using: :btree
  end

  create_table "weights", force: :cascade do |t|
    t.integer  "pupil_id"
    t.float    "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pupil_id"], name: "index_weights_on_pupil_id", using: :btree
  end

end
