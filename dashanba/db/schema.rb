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

ActiveRecord::Schema.define(:version => 20121217142447) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "record"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mission", :force => true do |t|
    t.integer  "m_id"
    t.integer  "v_id"
    t.integer  "u_id"
    t.datetime "MissionTime"
    t.datetime "SingUpTime"
    t.string   "BeforePhoto"
    t.string   "AfterPhoto"
    t.string   "FinishFlag"
    t.datetime "FinishTime"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user", :force => true do |t|
    t.integer  "u_id"
    t.string   "u_account"
    t.string   "u_password"
    t.string   "u_name"
    t.string   "u_phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vender", :force => true do |t|
    t.integer  "v_id"
    t.string   "v_account"
    t.string   "v_password"
    t.string   "v_name"
    t.string   "v_phone"
    t.string   "address"
    t.string   "gift"
    t.string   "giftphoto"
    t.string   "street"
    t.string   "businesshour"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
