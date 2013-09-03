ActiveRecord::Schema.define(:version => 20130730203552) do

  create_table "categories", :force => true do |t|
    t.string "category_type"
  end

  create_table "categories_projects", :force => true do |t|
    t.integer "category_id"
    t.integer "project_id"
  end

  create_table "causes", :force => true do |t|
    t.string "cause_type"
  end

  create_table "causes_organizations", :force => true do |t|
    t.integer "cause_id"
    t.integer "organization_id"
  end

  create_table "interests", :force => true do |t|
    t.integer "project_id"
    t.integer "volunteer_id"
    t.string  "status",       :default => "Pending"
    t.string  "message"
  end

  
  create_table "projects", :force => true do |t|
    t.string  "title"
    t.string  "summary"
    t.date    "target_date"
    t.integer "organization_id"
    t.string  "importance"
    t.string  "state",           :default => "active"
  end

  add_index "projects", ["organization_id"], :name => "index_projects_on_organization_id"

  create_table "skills", :force => true do |t|
    t.string "skill_type"
  end

  create_table "skills_volunteers", :force => true do |t|
    t.integer "skill_id"
    t.integer "volunteer_id"
  end

  create_table "users", :force => true do |t|
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
    t.string   "profile_type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "volunteers", :force => true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "job_history"
    t.string  "phone"
    t.string  "availability"
    t.string  "location"
    t.string  "portfolio_links"
    t.integer "user_id"
    t.string  "linkedin_url"
  end

  create_table "organizations", :force => true do |t|
    t.string  "org_name"
    t.integer "user_id"
    t.string  "mission"
    t.string  "description"
    t.integer "year_founded"
    t.integer "size"
    t.string  "url"
    t.string  "avatar"
    t.string  "location"
  end


end
