class AddProductPageSettingsToOption < ActiveRecord::Migration
  def change

    #######################
    # "All" buttons
    #######################

  	add_column :options, :product_all_border_radius, :integer
  	add_column :options, :product_all_font_size_top, :integer
  	add_column :options, :product_all_font_size_bottom, :integer
  	add_column :options, :product_all_opacity, :integer
  	add_column :options, :product_all_padding, :string
  	add_column :options, :product_all_margin, :string

    #######################
    # Reserved Button
    #######################

  	add_column :options, :product_reserved_text_top, :string
  	add_column :options, :product_reserved_text_bottom, :string
  	add_column :options, :product_reserved_background, :string
  	add_column :options, :product_reserved_text_color_top, :string
  	add_column :options, :product_reserved_text_color_bottom, :string
  	add_column :options, :product_reserved_border, :string

    ###################################
    # Time Expired / Re-Add Button
    ###################################

  	add_column :options, :product_readd_text_top, :string
  	add_column :options, :product_readd_text_bottom, :string
  	add_column :options, :product_readd_background, :string
  	add_column :options, :product_readd_text_color_top, :string
  	add_column :options, :product_readd_text_color_bottom, :string
  	add_column :options, :product_readd_border, :string

    #####################################
    # Time Expired / No Re-Add Button
    #####################################

  	add_column :options, :product_no_readd_text_top, :string
  	add_column :options, :product_no_readd_text_bottom, :string
  	add_column :options, :product_no_readd_background, :string
  	add_column :options, :product_no_readd_text_color_top, :string
  	add_column :options, :product_no_readd_text_color_bottom, :string
  	add_column :options, :product_no_readd_timer_color, :string
  	add_column :options, :product_no_readd_border, :string
  	add_column :options, :product_no_readd_link, :string
  	add_column :options, :product_no_readd_link_color, :string
  	add_column :options, :product_no_readd_link_font_size, :integer

    ###########################################
    # Reserved (by Another Customer) Button
    ###########################################

  	add_column :options, :product_another_reserved_text_top, :string
  	add_column :options, :product_another_reserved_text_bottom, :string
  	add_column :options, :product_another_reserved_background, :string
  	add_column :options, :product_another_reserved_text_color_top, :string
  	add_column :options, :product_another_reserved_text_color_bottom, :string
  	add_column :options, :product_another_reserved_timer_color, :string
  	add_column :options, :product_another_reserved_border, :string
  	add_column :options, :product_another_reserved_link, :string
  	add_column :options, :product_another_reserved_link_color, :string
  	add_column :options, :product_another_reserved_link_font_size, :integer

    #############################
    # Reserved Products Grid
    #############################

    add_column :options, :product_grid_text, :string
    add_column :options, :product_grid_background, :string
    add_column :options, :product_grid_text_color, :string
    add_column :options, :product_grid_border, :string
    add_column :options, :product_grid_border_radius, :integer
    add_column :options, :product_grid_padding, :string
    add_column :options, :product_grid_margin, :string
    # reserved grid items
    add_column :options, :product_grid_reserved_background, :string
    add_column :options, :product_grid_reserved_text_color, :string
    add_column :options, :product_grid_reserved_border_radius, :integer
    # sold grid items
    add_column :options, :product_grid_sold_text, :string
    add_column :options, :product_grid_sold_background, :string
    add_column :options, :product_grid_sold_text_color, :string
    add_column :options, :product_grid_sold_border_radius, :integer

  end
end
