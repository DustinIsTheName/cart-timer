class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|

    	t.boolean :enable
    	t.text :custom_css
    	t.text :timer_label_text
    	t.text :timer_warning_message
    	t.text :timer_expired_message

    	t.string :header_color
    	t.integer :header_font_size
    	t.string :header_border_color
    	t.string :header_background_color
    	t.integer :header_border_radius
    	t.string :header_padding
    	t.string :header_margin

    	t.string :quick_view_color
    	t.integer :quick_view_font_size
    	t.string :quick_view_border_color
    	t.string :quick_view_background_color
    	t.integer :quick_view_border_radius
    	t.string :quick_view_padding
    	t.string :quick_view_margin

    	t.string :message_color
    	t.integer :message_font_size
    	t.string :message_border_color
    	t.string :message_background_color
    	t.integer :message_border_radius
    	t.string :message_padding
    	t.string :message_margin

    	t.string :button_1_text
    	t.string :button_1_color
    	t.integer :button_1_font_size
    	t.string :button_1_background_color 
    	t.string :button_1_padding 
    	t.string :button_1_border 
    	t.integer :button_1_border_radius

    	t.string :button_2_text
    	t.string :button_2_color
    	t.integer :button_2_font_size
    	t.string :button_2_background_color 
    	t.string :button_2_padding 
    	t.string :button_2_border 
    	t.integer :button_2_border_radius

    	t.integer :shop_id

      t.timestamps null: false
    end
  end
end
