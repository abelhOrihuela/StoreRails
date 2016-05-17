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

ActiveRecord::Schema.define(version: 20160517025305) do

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.decimal  "balance"
    t.integer  "type_client_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "provider_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products_sales", id: false, force: :cascade do |t|
    t.integer "product_id"
    t.integer "sale_id"
  end

  add_index "products_sales", ["product_id"], name: "index_products_sales_on_product_id"
  add_index "products_sales", ["sale_id"], name: "index_products_sales_on_sale_id"

  create_table "sales", force: :cascade do |t|
    t.decimal  "total"
    t.decimal  "total_parcial"
    t.integer  "client_id"
    t.integer  "seller_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "type_clients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
