# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_02_060051) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atmas", force: :cascade do |t|
    t.integer "score"
    t.integer "level"
    t.integer "antiquity"
    t.integer "activity_score"
    t.integer "community_serviceScore"
    t.integer "sucessful_projects"
    t.integer "reactivity_score"
    t.boolean "is_artist"
    t.boolean "is_creator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_atmas_on_user_id"
  end

  create_table "auctions", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "type"
    t.string "dimensions"
    t.string "weight"
    t.string "image"
    t.string "condition"
    t.integer "quantity"
    t.string "manufacturer_country"
    t.integer "initial_bid"
    t.integer "current_bid"
    t.integer "sold_bid"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "avatar"
    t.index ["user_id"], name: "index_auctions_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "type"
    t.string "reviews"
    t.string "score"
    t.string "image"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "type"
    t.integer "ticket_cost"
    t.integer "total_cost"
    t.integer "ticket_quantity"
    t.string "location_city"
    t.string "location_address"
    t.string "location_lat"
    t.string "location_lng"
    t.boolean "community_benefit"
    t.integer "community_serviceScore"
    t.string "target_group"
    t.string "age_group"
    t.boolean "is_artist"
    t.boolean "non_profit"
    t.string "tags"
    t.integer "social_contribution"
    t.integer "overall_score"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meeting_locations", force: :cascade do |t|
    t.string "name"
    t.string "lat"
    t.string "lng"
    t.integer "locationRadius"
    t.string "address"
    t.string "city"
    t.string "province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.boolean "sell_items"
    t.boolean "purchase_items"
    t.boolean "createProjects"
    t.boolean "participate_projects"
    t.boolean "create_auctions"
    t.boolean "bid_auctions"
    t.boolean "provide_service"
    t.boolean "book_service"
    t.integer "monitored_transactions"
    t.boolean "is_moderator"
    t.integer "resolved_disputes"
    t.boolean "validate_disputes"
    t.integer "qualified_bonus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "type"
    t.integer "tax"
    t.integer "price"
    t.integer "stock"
    t.string "tags"
    t.string "image"
    t.string "dimensions"
    t.string "weight"
    t.string "reviews"
    t.string "score"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "type"
    t.integer "subscription_price"
    t.integer "level"
    t.string "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "type"
    t.integer "intitial_cost"
    t.integer "total_cost"
    t.integer "number_members"
    t.integer "member_complexityLevel"
    t.string "location_city"
    t.string "location_address"
    t.string "location_lat"
    t.string "location_lng"
    t.integer "location_radius"
    t.boolean "community_benefit"
    t.integer "community_serviceScore"
    t.string "target_group"
    t.string "age_group"
    t.boolean "is_artist"
    t.boolean "non_profit"
    t.string "tags"
    t.integer "social_contribution"
    t.integer "complexity_level"
    t.integer "costEffective_score"
    t.integer "overall_score"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "type"
    t.string "reviews"
    t.string "score"
    t.string "image"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcriptions", force: :cascade do |t|
    t.string "name"
    t.integer "total_price"
    t.integer "tax"
    t.integer "add_donation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score"
    t.integer "reputation"
    t.integer "positive_transactions"
    t.integer "negative_transactions"
    t.integer "subscription_type"
    t.boolean "verified"
    t.boolean "biometric"
    t.uuid "identity"
    t.integer "last_score"
    t.integer "current_score"
    t.string "phone_number"
    t.string "OTP"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wrd_pw_rs", force: :cascade do |t|
    t.integer "score"
    t.integer "level"
    t.string "type"
    t.integer "num_reports"
    t.string "cellphone_num"
    t.string "referral"
    t.integer "sucessful_projects"
    t.integer "sucessful_services"
    t.integer "sucessful_sales"
    t.integer "community_service_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
