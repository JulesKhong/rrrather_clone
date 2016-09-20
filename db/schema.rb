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

ActiveRecord::Schema.define(version: 20160920181653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "votes"
    t.string   "username"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "prompt_id"
    t.index ["prompt_id"], name: "index_feedbacks_on_prompt_id", using: :btree
  end

  create_table "prompts", force: :cascade do |t|
    t.string   "option_a"
    t.string   "option_b"
    t.integer  "votes_a"
    t.integer  "votes_b"
    t.string   "imageA_file_name"
    t.string   "imageA_content_type"
    t.integer  "imageA_file_size"
    t.datetime "imageA_updated_at"
    t.string   "imageB_file_name"
    t.string   "imageB_content_type"
    t.integer  "imageB_file_size"
    t.datetime "imageB_updated_at"
    t.string   "author"
    t.text     "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
