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

ActiveRecord::Schema.define(:version => 20130905010143) do

  create_table "baomingitems", :force => true do |t|
    t.integer  "baoming_id"
    t.boolean  "free"
    t.integer  "klass_id"
    t.datetime "end_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "baomings", :force => true do |t|
    t.integer  "person_id"
    t.string   "discount_way"
    t.string   "payment_way"
    t.integer  "makeup"
    t.datetime "next"
    t.string   "important"
    t.boolean  "installment"
    t.float    "installment_duration"
    t.float    "installment_value"
    t.float    "installment_last"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "klasses", :force => true do |t|
    t.string   "title"
    t.string   "state"
    t.boolean  "projector"
    t.boolean  "sound"
    t.boolean  "mic"
    t.integer  "capacity"
    t.float    "duration"
    t.float    "frequency"
    t.float    "cycle"
    t.integer  "section"
    t.string   "kind"
    t.boolean  "chaban"
    t.string   "style"
    t.boolean  "video_makeup"
    t.integer  "score"
    t.text     "remark"
    t.boolean  "network"
    t.text     "tools"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "menu"
    t.integer  "menu_id"
    t.boolean  "laser"
    t.boolean  "need_before_task"
    t.boolean  "need_after_task"
    t.text     "before_task"
    t.text     "after_task"
  end

  create_table "klasses_people", :id => false, :force => true do |t|
    t.integer "klass_id"
    t.integer "person_id"
  end

  create_table "klasses_rooms", :id => false, :force => true do |t|
    t.integer "klass_id"
    t.integer "room_id"
  end

  create_table "klassjoins", :force => true do |t|
    t.integer  "klass_id"
    t.integer  "front_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "klassplans", :force => true do |t|
    t.integer  "klass_id"
    t.datetime "start_at"
    t.datetime "before_klass_notification_at"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "room_id"
  end

  create_table "majors", :force => true do |t|
    t.string   "title"
    t.integer  "school_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "markets", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "markets_people", :force => true do |t|
    t.integer  "market_id"
    t.integer  "person_id"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "username"
    t.integer  "phone"
    t.integer  "qq"
    t.string   "state"
    t.boolean  "home_51"
    t.boolean  "home_101"
    t.boolean  "home_summer"
    t.boolean  "exam_4"
    t.boolean  "exam_6"
    t.boolean  "exam_toefl"
    t.boolean  "exam_qimo"
    t.boolean  "guide"
    t.boolean  "guide_vip"
    t.boolean  "logic"
    t.boolean  "alumnus"
    t.boolean  "finished"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "school_id"
    t.integer  "major_id"
    t.integer  "grade"
    t.boolean  "signup_openclass"
    t.string   "sex"
  end

  create_table "planitems", :force => true do |t|
    t.string   "title"
    t.integer  "klassplan_id"
    t.integer  "person_id"
    t.string   "state"
    t.datetime "start_at"
    t.float    "duration"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "reviews", :force => true do |t|
    t.string   "title"
    t.string   "person_id"
    t.datetime "start_at"
    t.string   "will"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rooms", :force => true do |t|
    t.string   "title"
    t.boolean  "projector"
    t.boolean  "sound"
    t.boolean  "mic"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "laser"
  end

  create_table "schools", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scores", :force => true do |t|
    t.string   "value"
    t.string   "type"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "warnings", :force => true do |t|
    t.string   "title"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
