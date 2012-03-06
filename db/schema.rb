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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120302141135) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "lastname"
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "phone"
    t.string   "email"
    t.boolean  "pkunde"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "internals", :force => true do |t|
    t.string   "article"
    t.string   "order_number"
    t.text     "note"
    t.string   "amount"
    t.string   "deliveryman"
    t.string   "filledin_by"
    t.datetime "order_arrived"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "article"
    t.string   "order_number"
    t.text     "note"
    t.string   "amount"
    t.string   "deliveryman"
    t.string   "filledin_by"
    t.datetime "ordered_date"
    t.datetime "arrived_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.integer  "status"
  end

end
