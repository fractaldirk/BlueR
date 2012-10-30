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

ActiveRecord::Schema.define(:version => 20121030192647) do

  create_table "comments", :force => true do |t|
    t.string   "idea_commenter"
    t.text     "idea_comment"
    t.integer  "post_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "competencies", :force => true do |t|
    t.string   "competencies"
    t.integer  "competency_value"
    t.integer  "competency_cpv"
    t.integer  "position_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "competency_options"
  end

  add_index "competencies", ["position_id"], :name => "index_competencies_on_position_id"

  create_table "m_competencies", :force => true do |t|
    t.string   "mcompetencies"
    t.integer  "mcompetency_value"
    t.integer  "mcompetency_cpv"
    t.integer  "position_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "m_competencies", ["position_id"], :name => "index_m_competencies_on_position_id"

  create_table "positions", :force => true do |t|
    t.string   "position_name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
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
    t.string   "nationality_string"
    t.string   "gender_string"
    t.string   "residential_status_string"
    t.string   "department"
    t.string   "type_contract"
  end

  create_table "posts", :force => true do |t|
    t.string   "idea_title"
    t.string   "idea_content"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "idea_name"
    t.text     "idea_body"
  end

  create_table "socials", :force => true do |t|
    t.string   "social_name"
    t.integer  "social_cpv"
    t.integer  "social_value"
    t.integer  "position_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "socials", ["position_id"], :name => "index_socials_on_position_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "user_office"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
