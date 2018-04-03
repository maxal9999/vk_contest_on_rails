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

ActiveRecord::Schema.define(version: 20180331072229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "orders", force: :cascade do |t|
    t.uuid "order_id", default: -> { "uuid_generate_v4()" }, null: false
    t.uuid "customer_id", default: -> { "uuid_generate_v4()" }
    t.uuid "executor_id", default: -> { "uuid_generate_v4()" }
    t.decimal "purse", precision: 8, scale: 2
    t.integer "status", limit: 2
    t.string "descr", limit: 1000
    t.string "comment_txt", limit: 500
    t.datetime "create_date"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["executor_id"], name: "index_orders_on_executor_id"
    t.index ["order_id"], name: "index_orders_on_order_id"
  end

  create_table "users", force: :cascade do |t|
    t.uuid "author_id", default: -> { "uuid_generate_v4()" }, null: false
    t.decimal "purse", precision: 8, scale: 2
    t.boolean "status"
    t.string "login", limit: 200
    t.string "password", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
