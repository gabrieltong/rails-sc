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

ActiveRecord::Schema.define(:version => 20130903083032) do

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
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "klasses_people", :id => false, :force => true do |t|
    t.integer "klass_id"
    t.integer "person_id"
  end

  create_table "majors", :force => true do |t|
    t.string   "title"
    t.integer  "school_id"
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
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "school_id"
    t.integer  "major_id"
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
