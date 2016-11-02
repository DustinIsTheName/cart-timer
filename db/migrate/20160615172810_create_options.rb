#  General conventions:
#
#  bg = background 
#  sz = size
#  ft = font 

class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|

    	t.boolean :enable_app # duh

        #######################
        # general options
        #######################
        t.integer :starting_time # integer of chosen time in seconds
        t.string :timer_format
        t.string :product_rule # must be a string to accommodate 'none' & 'reset', parse integer for time calculations

        #######################################################################################
        # settings for the function and display of the floating time (read: fixed position)
        #######################################################################################
        t.boolean :float_enable
        t.text :float_text
        t.string :float_position
        t.string :float_bg_color
        t.string :float_text_color
        t.string :float_timer_color
        t.string :float_border
        t.integer :float_border_radius
        t.integer :float_font_size
        t.integer :float_timer_size

        ############################################################
        # settings for the warning that displays when time is low
        ############################################################
        t.boolean :low_time_enable
        t.string :low_time_location
        t.integer :low_time_warning
        t.integer :low_time_warning_2
        t.text :low_time_text
        # bar/modal styles
        t.string :low_time_bar_bg_color
        t.string :low_time_bar_text_color
        t.string :low_time_bar_timer_color
        t.string :low_time_bar_border
        t.integer :low_time_bar_border_radius
        t.integer :low_time_bar_font_size
        t.integer :low_time_bar_timer_size
        # view cart button styles
        t.string :low_time_view_cart_bg_color
        t.string :low_time_view_cart_text_color
        t.string :low_time_view_cart_border
        t.integer :low_time_view_cart_border_radius
        # checkout button styles
        t.string :low_time_checkout_bg_color
        t.string :low_time_checkout_text_color
        t.string :low_time_checkout_border
        t.integer :low_time_checkout_border_radius

        ######################################################
        # settings for the timer shown in the shop's header
        ######################################################
        t.boolean :header_enable
        t.integer :header_display # the set of options that will show
        t.integer :header_warning
        t.string :header_animation
        t.integer :header_low_warning
        t.integer :header_low_animation
        # First set of display options
        t.string :header_display1_text_color
        t.integer :header_display1_font_size
        t.string :header_display1_padding
        t.string :header_display1_margin
        t.string :header_display1_low_text_color
        # Second set of display options
        t.string :header_display2_text_color
        t.string :header_display2_icon_color
        t.integer :header_display2_font_size
        t.string :header_display2_padding
        t.string :header_display2_margin
        t.string :header_display2_low_text_color
        t.string :header_display2_low_icon_color
        # Third set of display options
        t.string :header_display3_text_color
        t.string :header_display3_icon_color
        t.string :header_display3_bg_color
        t.string :header_display3_border
        t.integer :header_display3_border_radius
        t.integer :header_display3_font_size
        t.string :header_display3_padding
        t.string :header_display3_margin
        t.string :header_display3_low_text_color
        t.string :header_display3_low_icon_color
        t.string :header_display3_low_bg_color
        t.string :header_display3_low_border
        t.integer :header_display3_low_border_radius
        # Fourth set of display options
        t.string :header_display4_text_color
        t.string :header_display4_icon_color
        t.string :header_display4_bg_color
        t.string :header_display4_border
        t.integer :header_display4_border_radius
        t.integer :header_display4_font_size
        t.string :header_display4_padding
        t.string :header_display4_margin
        t.string :header_display4_low_text_color
        t.string :header_display4_low_icon_color
        t.string :header_display4_low_bg_color
        t.string :header_display4_low_border
        t.integer :header_display4_low_border_radius

        ######################################################
        # settings for timer that displays on the cart page 
        ######################################################
        t.boolean :cart_enable
        t.text :cart_text
        # message bar styles
        t.string :cart_bar_bg_color
        t.string :cart_bar_text_color
        t.string :cart_bar_timer_color
        t.string :cart_bar_border
        t.integer :cart_bar_border_radius
        t.string :cart_bar_font_size
        t.string :cart_bar_timer_size
        t.string :cart_bar_padding
        t.string :cart_bar_margin
        # continue shopping button styles
        t.string :cart_continue_bg_color
        t.string :cart_continue_text_color
        t.string :cart_continue_border
        t.integer :cart_continue_border_radius
        # checkout button styles
        t.string :cart_checkout_bg_color
        t.string :cart_checkout_text_color
        t.string :cart_checkout_border
        t.integer :cart_checkout_border_radius
        # low time settings
        t.boolean :cart_low_enable
        t.integer :cart_low_warning
        # low time message bar styles
        t.string :cart_bar_low_bg_color
        t.string :cart_bar_low_text_color
        t.string :cart_bar_low_timer_color
        t.string :cart_bar_low_border
        t.integer :cart_bar_low_border_radius
        # low time continue shopping button styles
        t.string :cart_continue_low_bg_color
        t.string :cart_continue_low_text_color
        t.string :cart_continue_low_border
        t.integer :cart_continue_low_border_radius
        # low time checkout button styles
        t.string :cart_checkout_low_bg_color
        t.string :cart_checkout_low_text_color
        t.string :cart_checkout_low_border
        t.integer :cart_checkout_low_border_radius

        ######################################################
        # settings for timer that displays on the cart page 
        ######################################################
        t.boolean :quick_view_enable
        t.text :quick_view_text
        t.string :quick_view_background_color
        t.string :quick_view_text_color
        t.string :quick_view_timer_color
        t.string :quick_view_border
        t.integer :quick_view_border_radius
        t.integer :quick_view_font_size
        t.integer :quick_view_timer_size
        t.string :quick_view_padding
        t.string :quick_view_margin
        # low timer settings
        t.boolean :quick_view_low_enable
        t.integer :quick_view_low_warning
        t.string :quick_view_low_background_color
        t.string :quick_view_low_text_color
        t.string :quick_view_low_timer_color
        t.string :quick_view_low_border
        t.integer :quick_view_low_border_radius

        t.text :custom_css

    	t.integer :shop_id

      t.timestamps null: false
    end
  end
end
