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

ActiveRecord::Schema.define(version: 2020_10_31_174852) do

  create_table "bank_instructions", force: :cascade do |t|
    t.string "type"
    t.decimal "amount", null: false
  end

  create_table "capabilities", force: :cascade do |t|
    t.string "actable_type"
    t.integer "actable_id"
    t.integer "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actable_type", "actable_id"], name: "index_capabilities_on_actable_type_and_actable_id"
  end

  create_table "charges", force: :cascade do |t|
    t.string "type"
    t.integer "contract_id"
    t.decimal "amount", null: false
    t.index ["contract_id"], name: "index_charges_on_contract_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "type"
    t.integer "order_id"
    t.decimal "amount", null: false
    t.index ["order_id"], name: "index_contracts_on_order_id"
  end

  create_table "ledgers", force: :cascade do |t|
    t.integer "charge_id"
    t.decimal "amount", null: false
    t.index ["charge_id"], name: "index_ledgers_on_charge_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "type"
    t.decimal "amount", null: false
  end

  create_table "reconciliations", force: :cascade do |t|
    t.integer "contract_id"
    t.integer "charge_id"
    t.integer "cost_charge_id"
    t.index ["charge_id"], name: "index_reconciliations_on_charge_id"
    t.index ["contract_id"], name: "index_reconciliations_on_contract_id"
  end

end
