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

ActiveRecord::Schema.define(:version => 20120818011651) do

  create_table "aboutshelians", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "aboutshetuans", :force => true do |t|
    t.string   "name"
    t.string   "president"
    t.string   "contact"
    t.string   "kind"
    t.string   "institute"
    t.datetime "begin"
    t.boolean  "is_excellent"
    t.text     "detail"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "logo"
  end

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "albums", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "unit"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "views_count"
  end

  create_table "downloads", :force => true do |t|
    t.string   "description"
    t.string   "kind"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "attachment"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "kind"
    t.datetime "begin"
    t.datetime "end"
    t.string   "address"
    t.string   "organizer"
    t.string   "sponsor"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "area"
    t.integer  "views_count"
    t.string   "contact"
    t.boolean  "is_index"
    t.string   "photo"
  end

  create_table "kindeditor_assets", :force => true do |t|
    t.string   "asset"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "links", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notices", :force => true do |t|
    t.string   "title"
    t.string   "from"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "views_count"
  end

  create_table "periodicals", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "views_count"
    t.string   "unit"
    t.string   "author"
  end

  create_table "photos", :force => true do |t|
    t.integer  "album_id"
    t.string   "photo_file"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "description"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "rich_rich_files", :force => true do |t|
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "rich_file_file_name"
    t.string   "rich_file_content_type"
    t.integer  "rich_file_file_size"
    t.datetime "rich_file_updated_at"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.text     "uri_cache"
    t.string   "simplified_type",        :default => "file"
  end

  create_table "stars", :force => true do |t|
    t.string   "name"
    t.string   "department"
    t.string   "position"
    t.string   "contact"
    t.string   "institute"
    t.string   "motto"
    t.text     "detail"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "area"
    t.string   "photo"
  end

  create_table "videos", :force => true do |t|
    t.string   "name"
    t.string   "video_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "screenshot"
    t.integer  "views_count"
  end

end
