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

ActiveRecord::Schema.define(version: 20170731174502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charges", force: :cascade do |t|
    t.bigint "horse_id"
    t.string "date", null: false
    t.string "description", null: false
    t.money "amount", scale: 2, null: false
    t.index ["horse_id"], name: "index_charges_on_horse_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "horse_id"
    t.string "date", null: false
    t.string "description", null: false
    t.index ["horse_id"], name: "index_events_on_horse_id"
  end

  create_table "farriers", force: :cascade do |t|
    t.bigint "horse_id"
    t.string "name", null: false
    t.string "phone_number", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip_code", null: false
    t.index ["horse_id"], name: "index_farriers_on_horse_id"
  end

  create_table "horses", force: :cascade do |t|
    t.string "picture"
    t.string "registered_name"
    t.string "barn_name", null: false
    t.string "breed", null: false
    t.string "disipline"
    t.bigint "trainer_id_id"
    t.bigint "owner_id_id"
    t.index ["owner_id_id"], name: "index_horses_on_owner_id_id"
    t.index ["trainer_id_id"], name: "index_horses_on_trainer_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip_code", null: false
    t.boolean "trainer", null: false
  end

  create_table "veterinarians", force: :cascade do |t|
    t.bigint "horse_id"
    t.string "name", null: false
    t.string "phone_number", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip_code", null: false
    t.index ["horse_id"], name: "index_veterinarians_on_horse_id"
  end

end
