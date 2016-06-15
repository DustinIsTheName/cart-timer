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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160615172810) do

  create_table "options", force: :cascade do |t|
    t.boolean  "enable"
    t.text     "custom_css"
    t.text     "timer_label_text"
    t.text     "timer_warning_message"
    t.text     "timer_expired_message"
    t.string   "header_color"
    t.integer  "header_font_size"
    t.string   "header_border_color"
    t.string   "header_background_color"
    t.integer  "header_border_radius"
    t.string   "header_padding"
    t.string   "header_margin"
    t.string   "quick_view_color"
    t.integer  "quick_view_font_size"
    t.string   "quick_view_border_color"
    t.string   "quick_view_background_color"
    t.integer  "quick_view_border_radius"
    t.string   "quick_view_padding"
    t.string   "quick_view_margin"
    t.string   "message_color"
    t.integer  "message_font_size"
    t.string   "message_border_color"
    t.string   "message_background_color"
    t.integer  "message_border_radius"
    t.string   "message_padding"
    t.string   "message_margin"
    t.string   "button_1_text"
    t.string   "button_1_color"
    t.integer  "button_1_font_size"
    t.string   "button_1_background_color"
    t.string   "button_1_padding"
    t.string   "button_1_border"
    t.integer  "button_1_border_radius"
    t.string   "button_2_text"
    t.string   "button_2_color"
    t.integer  "button_2_font_size"
    t.string   "button_2_background_color"
    t.string   "button_2_padding"
    t.string   "button_2_border"
    t.integer  "button_2_border_radius"
    t.integer  "shop_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "shopify_domain", null: false
    t.string   "shopify_token",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shops", ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true

end
