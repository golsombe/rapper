# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091228191951) do

  create_table "db_connections", :force => true do |t|
    t.string   "name"
    t.string   "business_key"
    t.string   "server"
    t.string   "database"
    t.string   "user"
    t.string   "password"
    t.string   "environment"
    t.integer  "db_driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "db_drivers", :force => true do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "version",     :limit => 10, :precision => 10, :scale => 0
    t.string   "require_exp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "package_mappings", :force => true do |t|
    t.string   "source_row_key"
    t.string   "destination_value"
    t.string   "destination_field"
    t.datetime "start_dt"
    t.datetime "end_dt"
    t.integer  "package_source_id"
    t.integer  "db_connection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "package_sources", :force => true do |t|
    t.string   "name"
    t.integer  "db_connection_id"
    t.integer  "package_id"
    t.integer  "version",          :limit => 10, :precision => 10, :scale => 0
    t.text     "source_sql"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packages", :force => true do |t|
    t.string   "name"
    t.string   "desc"
    t.string   "business_key"
    t.integer  "version",      :limit => 10, :precision => 10, :scale => 0
    t.integer  "role_id"
    t.string   "user_id"
    t.datetime "last_run_dt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "expiration_dt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "tst_conns", :force => true do |t|
    t.string   "name"
    t.integer  "connection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.datetime "deleted_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
