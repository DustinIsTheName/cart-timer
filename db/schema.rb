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

ActiveRecord::Schema.define(version: 20170107201518) do

  create_table "carts", force: :cascade do |t|
    t.integer  "expiry_date"
    t.integer  "time_added_to_checkout"
    t.integer  "original_expiry_date"
    t.string   "cart_token"
    t.integer  "shop_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "options", force: :cascade do |t|
    t.boolean  "enable_app"
    t.integer  "starting_time"
    t.string   "timer_format"
    t.string   "product_rule"
    t.boolean  "float_enable"
    t.text     "float_text"
    t.string   "float_position"
    t.string   "float_bg_color"
    t.string   "float_text_color"
    t.string   "float_timer_color"
    t.string   "float_border"
    t.integer  "float_border_radius"
    t.integer  "float_font_size"
    t.integer  "float_timer_size"
    t.boolean  "low_time_enable"
    t.string   "low_time_location"
    t.integer  "low_time_warning"
    t.integer  "low_time_warning_2"
    t.text     "low_time_text"
    t.string   "low_time_bar_bg_color"
    t.string   "low_time_bar_text_color"
    t.string   "low_time_bar_timer_color"
    t.string   "low_time_bar_border"
    t.integer  "low_time_bar_border_radius"
    t.integer  "low_time_bar_font_size"
    t.integer  "low_time_bar_timer_size"
    t.string   "low_time_view_cart_bg_color"
    t.string   "low_time_view_cart_text_color"
    t.string   "low_time_view_cart_border"
    t.integer  "low_time_view_cart_border_radius"
    t.string   "low_time_checkout_bg_color"
    t.string   "low_time_checkout_text_color"
    t.string   "low_time_checkout_border"
    t.integer  "low_time_checkout_border_radius"
    t.boolean  "header_enable"
    t.integer  "header_display"
    t.boolean  "header_low_enable"
    t.integer  "header_low_warning"
    t.integer  "header_low_animation"
    t.string   "header_display1_text_color"
    t.integer  "header_display1_font_size"
    t.string   "header_display1_padding"
    t.string   "header_display1_margin"
    t.string   "header_display1_low_text_color"
    t.string   "header_display2_text_color"
    t.string   "header_display2_icon_color"
    t.integer  "header_display2_font_size"
    t.string   "header_display2_padding"
    t.string   "header_display2_margin"
    t.string   "header_display2_low_text_color"
    t.string   "header_display2_low_icon_color"
    t.string   "header_display3_text_color"
    t.string   "header_display3_icon_color"
    t.string   "header_display3_bg_color"
    t.string   "header_display3_border"
    t.integer  "header_display3_border_radius"
    t.integer  "header_display3_font_size"
    t.string   "header_display3_padding"
    t.string   "header_display3_margin"
    t.string   "header_display3_low_text_color"
    t.string   "header_display3_low_icon_color"
    t.string   "header_display3_low_bg_color"
    t.string   "header_display3_low_border"
    t.integer  "header_display3_low_border_radius"
    t.string   "header_display4_text_color"
    t.string   "header_display4_icon_color"
    t.string   "header_display4_bg_color"
    t.string   "header_display4_border"
    t.integer  "header_display4_border_radius"
    t.integer  "header_display4_font_size"
    t.string   "header_display4_padding"
    t.string   "header_display4_margin"
    t.string   "header_display4_low_text_color"
    t.string   "header_display4_low_icon_color"
    t.string   "header_display4_low_bg_color"
    t.string   "header_display4_low_border"
    t.integer  "header_display4_low_border_radius"
    t.boolean  "cart_enable"
    t.text     "cart_text"
    t.string   "cart_bar_bg_color"
    t.string   "cart_bar_text_color"
    t.string   "cart_bar_timer_color"
    t.string   "cart_bar_border"
    t.integer  "cart_bar_border_radius"
    t.string   "cart_bar_font_size"
    t.string   "cart_bar_timer_size"
    t.string   "cart_bar_padding"
    t.string   "cart_bar_margin"
    t.string   "cart_continue_bg_color"
    t.string   "cart_continue_text_color"
    t.string   "cart_continue_border"
    t.integer  "cart_continue_border_radius"
    t.string   "cart_checkout_bg_color"
    t.string   "cart_checkout_text_color"
    t.string   "cart_checkout_border"
    t.integer  "cart_checkout_border_radius"
    t.boolean  "cart_low_enable"
    t.integer  "cart_low_warning"
    t.string   "cart_bar_low_bg_color"
    t.string   "cart_bar_low_text_color"
    t.string   "cart_bar_low_timer_color"
    t.string   "cart_bar_low_border"
    t.integer  "cart_bar_low_border_radius"
    t.string   "cart_continue_low_bg_color"
    t.string   "cart_continue_low_text_color"
    t.string   "cart_continue_low_border"
    t.integer  "cart_continue_low_border_radius"
    t.string   "cart_checkout_low_bg_color"
    t.string   "cart_checkout_low_text_color"
    t.string   "cart_checkout_low_border"
    t.integer  "cart_checkout_low_border_radius"
    t.boolean  "quick_view_enable"
    t.text     "quick_view_text"
    t.string   "quick_view_background_color"
    t.string   "quick_view_text_color"
    t.string   "quick_view_timer_color"
    t.string   "quick_view_border"
    t.integer  "quick_view_border_radius"
    t.integer  "quick_view_font_size"
    t.integer  "quick_view_timer_size"
    t.string   "quick_view_padding"
    t.string   "quick_view_margin"
    t.boolean  "quick_view_low_enable"
    t.integer  "quick_view_low_warning"
    t.string   "quick_view_low_background_color"
    t.string   "quick_view_low_text_color"
    t.string   "quick_view_low_timer_color"
    t.string   "quick_view_low_border"
    t.integer  "quick_view_low_border_radius"
    t.text     "custom_css"
    t.integer  "shop_id"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "product_all_border_radius"
    t.integer  "product_all_font_size_top"
    t.integer  "product_all_font_size_bottom"
    t.integer  "product_all_opacity"
    t.string   "product_all_padding"
    t.string   "product_all_margin"
    t.string   "product_reserved_text_top"
    t.string   "product_reserved_text_bottom"
    t.string   "product_reserved_background"
    t.string   "product_reserved_text_color_top"
    t.string   "product_reserved_text_color_bottom"
    t.string   "product_reserved_border"
    t.string   "product_readd_text_top"
    t.string   "product_readd_text_bottom"
    t.string   "product_readd_background"
    t.string   "product_readd_text_color_top"
    t.string   "product_readd_text_color_bottom"
    t.string   "product_readd_border"
    t.string   "product_no_readd_text_top"
    t.string   "product_no_readd_text_bottom"
    t.string   "product_no_readd_background"
    t.string   "product_no_readd_text_color_top"
    t.string   "product_no_readd_text_color_bottom"
    t.string   "product_no_readd_timer_color"
    t.string   "product_no_readd_border"
    t.string   "product_no_readd_link"
    t.string   "product_no_readd_link_color"
    t.integer  "product_no_readd_link_font_size"
    t.string   "product_another_reserved_text_top"
    t.string   "product_another_reserved_text_bottom"
    t.string   "product_another_reserved_background"
    t.string   "product_another_reserved_text_color_top"
    t.string   "product_another_reserved_text_color_bottom"
    t.string   "product_another_reserved_timer_color"
    t.string   "product_another_reserved_border"
    t.string   "product_another_reserved_link"
    t.string   "product_another_reserved_link_color"
    t.integer  "product_another_reserved_link_font_size"
    t.string   "product_grid_text"
    t.string   "product_grid_background"
    t.string   "product_grid_text_color"
    t.string   "product_grid_border"
    t.integer  "product_grid_border_radius"
    t.string   "product_grid_padding"
    t.string   "product_grid_margin"
    t.string   "product_grid_reserved_background"
    t.string   "product_grid_reserved_text_color"
    t.integer  "product_grid_reserved_border_radius"
    t.string   "product_grid_sold_text"
    t.string   "product_grid_sold_background"
    t.string   "product_grid_sold_text_color"
    t.integer  "product_grid_sold_border_radius"
  end

  create_table "reserveds", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "shopify_domain", null: false
    t.string   "shopify_token",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shops", ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true

  create_table "variants", force: :cascade do |t|
    t.integer  "shopify_id", limit: 5
    t.integer  "quantity"
    t.integer  "shop_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
