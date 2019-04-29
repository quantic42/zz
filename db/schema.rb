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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_16_233201) do

  create_table "cb_acquisitions", id: :bigint, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "acquisition_id", null: false
    t.string "acquiring_object_id", limit: 64, null: false
    t.string "acquired_object_id", limit: 64, null: false
    t.string "term_code", limit: 16
    t.decimal "price_amount", precision: 15
    t.string "price_currency_code", limit: 16
    t.date "acquired_at"
    t.string "source_url"
    t.string "source_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["acquired_object_id"], name: "acquired_object_id"
    t.index ["acquiring_object_id"], name: "acquiring_object_id"
    t.index ["acquisition_id"], name: "acquisition_id"
  end

  create_table "cb_degrees", id: :bigint, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "object_id", limit: 64, null: false
    t.string "degree_type", limit: 32, null: false
    t.string "subject"
    t.string "institution", limit: 64
    t.date "graduated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["object_id"], name: "person"
  end

  create_table "cb_funding_rounds", id: :bigint, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "funding_round_id", null: false
    t.string "object_id", limit: 64, null: false
    t.date "funded_at"
    t.string "funding_round_type", limit: 32
    t.string "funding_round_code", limit: 32
    t.decimal "raised_amount_usd", precision: 15
    t.decimal "raised_amount", precision: 15
    t.string "raised_currency_code", limit: 3
    t.decimal "pre_money_valuation_usd", precision: 15
    t.decimal "pre_money_valuation", precision: 15
    t.string "pre_money_currency_code", limit: 3
    t.decimal "post_money_valuation_usd", precision: 15
    t.decimal "post_money_valuation", precision: 15
    t.string "post_money_currency_code", limit: 3
    t.integer "participants"
    t.integer "is_first_round", default: 0
    t.integer "is_last_round", default: 0
    t.string "source_url"
    t.string "source_description"
    t.string "created_by", limit: 64
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["funding_round_id"], name: "funding_round_id"
    t.index ["object_id"], name: "object"
  end

  create_table "cb_funds", id: :bigint, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "fund_id", null: false
    t.string "object_id", limit: 64, null: false
    t.string "name", null: false
    t.date "funded_at"
    t.decimal "raised_amount", precision: 15
    t.string "raised_currency_code", limit: 3
    t.string "source_url"
    t.string "source_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["fund_id"], name: "fund_id"
    t.index ["object_id"], name: "object"
  end

  create_table "cb_investments", id: :bigint, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "funding_round_id", null: false
    t.string "funded_object_id", limit: 64, null: false
    t.string "investor_object_id", limit: 64, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["funded_object_id"], name: "funded_object"
    t.index ["funding_round_id"], name: "funding_round"
    t.index ["investor_object_id"], name: "investor_object"
  end

  create_table "cb_ipos", id: :bigint, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "ipo_id", null: false
    t.string "object_id", limit: 64, null: false
    t.decimal "valuation_amount", precision: 15
    t.string "valuation_currency_code", limit: 16
    t.decimal "raised_amount", precision: 15
    t.string "raised_currency_code", limit: 16
    t.date "public_at"
    t.string "stock_symbol", limit: 32
    t.string "source_url"
    t.string "source_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["object_id"], name: "object"
  end

  create_table "cb_milestones", id: :bigint, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "object_id", limit: 64, null: false
    t.date "milestone_at"
    t.string "milestone_code", limit: 32
    t.string "description"
    t.string "source_url"
    t.string "source_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["object_id"], name: "object"
  end

  create_table "cb_objects", id: :string, limit: 64, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "entity_type", limit: 16, null: false
    t.bigint "entity_id", null: false
    t.string "parent_id", limit: 64
    t.string "name", null: false
    t.string "normalized_name", null: false
    t.string "permalink", null: false
    t.string "category_code", limit: 32
    t.string "status", limit: 32, default: "operating"
    t.date "founded_at"
    t.date "closed_at"
    t.string "domain", limit: 64
    t.string "homepage_url", limit: 64
    t.string "twitter_username", limit: 64
    t.string "logo_url"
    t.integer "logo_width"
    t.integer "logo_height"
    t.string "short_description"
    t.string "description"
    t.text "overview"
    t.string "tag_list"
    t.string "country_code", limit: 64
    t.string "state_code", limit: 64
    t.string "city", limit: 64
    t.string "region"
    t.date "first_investment_at"
    t.date "last_investment_at"
    t.integer "investment_rounds"
    t.integer "invested_companies"
    t.date "first_funding_at"
    t.date "last_funding_at"
    t.integer "funding_rounds"
    t.decimal "funding_total_usd", precision: 15
    t.date "first_milestone_at"
    t.date "last_milestone_at"
    t.integer "milestones"
    t.integer "relationships"
    t.string "created_by", limit: 64
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["domain"], name: "domain"
    t.index ["entity_type", "entity_id"], name: "entity", unique: true
    t.index ["name"], name: "name"
    t.index ["normalized_name"], name: "normalized_name"
    t.index ["permalink"], name: "permalink"
  end

  create_table "cb_offices", id: :bigint, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "object_id", limit: 64, null: false
    t.bigint "office_id", null: false
    t.string "description"
    t.string "region"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "zip_code"
    t.string "state_code", limit: 3
    t.string "country_code", limit: 3
    t.decimal "latitude", precision: 15, scale: 10
    t.decimal "longitude", precision: 15, scale: 10
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["object_id"], name: "object_id"
  end

  create_table "cb_people", id: :bigint, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "object_id", limit: 64, null: false
    t.string "first_name", limit: 128, null: false
    t.string "last_name", limit: 128, null: false
    t.string "birthplace", limit: 128
    t.string "affiliation_name", limit: 128
    t.index ["object_id"], name: "object", unique: true
  end

  create_table "cb_relationships", id: :bigint, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "relationship_id", null: false
    t.string "person_object_id", limit: 64, null: false
    t.string "relationship_object_id", limit: 64, null: false
    t.date "start_at"
    t.date "end_at"
    t.integer "is_past", limit: 1
    t.integer "sequence", default: 0
    t.string "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["person_object_id"], name: "person_object"
    t.index ["relationship_object_id"], name: "relationship_object"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
