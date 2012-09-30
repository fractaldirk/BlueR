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

ActiveRecord::Schema.define(:version => 20120930165033) do

  create_table "competencies", :force => true do |t|
    t.string   "competencies"
    t.integer  "competency_value"
    t.integer  "competency_cpv"
    t.integer  "position_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "competencies", ["position_id"], :name => "index_competencies_on_position_id"

  create_table "positions", :force => true do |t|
    t.string   "position_name"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "job_title"
    t.date     "valid_from"
    t.string   "job_grade"
    t.string   "reports_to"
    t.string   "line_manages"
    t.text     "overall_purpose"
    t.text     "specific_work_env"
    t.text     "scope"
    t.string   "name"
    t.string   "photo"
    t.text     "experience"
    t.date     "date_birth"
    t.integer  "gender"
    t.integer  "marital_status"
    t.integer  "children"
    t.text     "personal_development"
    t.text     "conceptual"
    t.text     "implementation"
    t.text     "support"
    t.string   "attitude1"
    t.string   "attitude2"
    t.string   "attitude3"
    t.string   "attitude4"
    t.string   "attitude5"
    t.string   "picture"
    t.integer  "nationality"
    t.integer  "residential_status"
    t.date     "start_date"
    t.integer  "office"
    t.boolean  "unique_position"
    t.decimal  "fte"
    t.boolean  "permanent"
  end

end
