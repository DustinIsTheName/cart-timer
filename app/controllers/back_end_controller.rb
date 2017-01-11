class BackEndController < AuthenticatedController

  protect_from_forgery except: :timer_js
  
  def index
    @shop = Shop.find_by_shopify_domain(@shop_session.url)
    @option = @shop.option

    # @shop.delay.syncVariants(@shop_session)
  end

  def update

    puts Colorize.magenta('updating...')
    @shop = Shop.find_by_shopify_domain(@shop_session.url)

    @shop.createScriptTag

  	@option = @shop.option

  	if @option.update_attributes(option_params)
			flash[:success] = "Successfully updated"
 			redirect_to root_path
		else
			render action: :index
		end

  end

  def install_instructions
    # APICallWorker.perform_async(@shop_session.url, 1, 250)
  end

  def timer_js
    @shop = Shop.find_by_shopify_domain(params[:shop])

    @option = @shop.option

    respond_to do |format|
      format.json {render json: @option}
      format.js
    end

  end

  private

    def option_params
      params.require(:option).permit(:options,:enable_app,:starting_time,:timer_format,:product_rule,
                                     :float_enable,:float_text,:float_position,:float_bg_color,:float_text_color,:float_timer_color,:float_border,:float_border_radius,:float_font_size,:float_timer_size,
                                     :low_time_enable,:low_time_location,:low_time_warning,:low_time_warning_2,:low_time_text,:low_time_bar_bg_color,:low_time_bar_text_color,:low_time_bar_timer_color,
                                     :low_time_bar_border,:low_time_bar_border_radius,:low_time_bar_font_size,:low_time_bar_timer_size,:low_time_view_cart_bg_color,:low_time_view_cart_text_color,
                                     :low_time_view_cart_border,:low_time_view_cart_border_radius,:low_time_checkout_bg_color,:low_time_checkout_text_color,:low_time_checkout_border,:low_time_checkout_border_radius,
                                     :header_enable,:header_display,:header_low_enable,:header_low_warning,:header_low_animation,
                                     :header_display1_text_color,:header_display1_font_size,:header_display1_padding,:header_display1_margin,:header_display1_low_text_color,
                                     :header_display2_text_color,:header_display2_icon_color,:header_display2_font_size,:header_display2_padding,:header_display2_margin,:header_display2_low_text_color,:header_display2_low_icon_color,
                                     :header_display3_text_color,:header_display3_icon_color,:header_display3_bg_color,:header_display3_border,:header_display3_border_radius,:header_display3_font_size,:header_display3_padding,:header_display3_margin,
                                     :header_display3_low_text_color,:header_display3_low_icon_color,:header_display3_low_bg_color,:header_display3_low_border,:header_display3_low_border_radius,
                                     :header_display4_text_color,:header_display4_icon_color,:header_display4_bg_color,:header_display4_border,:header_display4_border_radius,:header_display4_font_size,:header_display4_padding,:header_display4_margin,
                                     :header_display4_low_text_color,:header_display4_low_icon_color,:header_display4_low_bg_color,:header_display4_low_border,:header_display4_low_border_radius,
                                     :cart_enable,:cart_text,:cart_low_enable,:cart_low_warning,
                                     :cart_bar_bg_color,:cart_bar_text_color,:cart_bar_timer_color,:cart_bar_border,:cart_bar_border_radius,:cart_bar_font_size,:cart_bar_timer_size,:cart_bar_padding,:cart_bar_margin,
                                     :cart_continue_bg_color,:cart_continue_text_color,:cart_continue_border,:cart_continue_border_radius,
                                     :cart_checkout_bg_color,:cart_checkout_text_color,:cart_checkout_border,:cart_checkout_border_radius,
                                     :cart_bar_low_bg_color,:cart_bar_low_text_color,:cart_bar_low_timer_color,:cart_bar_low_border,:cart_bar_low_border_radius,
                                     :cart_continue_low_bg_color,:cart_continue_low_text_color,:cart_continue_low_border,:cart_continue_low_border_radius,
                                     :cart_checkout_low_bg_color,:cart_checkout_low_text_color,:cart_checkout_low_border,:cart_checkout_low_border_radius,
                                     :quick_view_enable,:quick_view_text,
                                     :quick_view_background_color,:quick_view_text_color,:quick_view_timer_color,:quick_view_border,:quick_view_border_radius,:quick_view_font_size,:quick_view_timer_size,:quick_view_padding,:quick_view_margin,
                                     :quick_view_low_enable,:quick_view_low_warning,:quick_view_low_background_color,:quick_view_low_text_color,:quick_view_low_timer_color,:quick_view_low_border,:quick_view_low_border_radius,
                                     :product_all_border_radius, :product_all_font_size_top, :product_all_font_size_bottom, :product_all_opacity, :product_all_padding, :product_all_margin,
                                     :product_reserved_text_top, :product_reserved_text_bottom, :product_reserved_background, :product_reserved_text_color_top, :product_reserved_text_color_bottom, :product_reserved_border,
                                     :product_readd_text_top, :product_readd_text_bottom, :product_readd_background, :product_readd_text_color_top, :product_readd_text_color_bottom, :product_readd_border,
                                     :product_no_readd_text_top, :product_no_readd_text_bottom, :product_no_readd_background, :product_no_readd_text_color_top, :product_no_readd_text_color_bottom, :product_no_readd_timer_color, :product_no_readd_border, :product_no_readd_link, :product_no_readd_link_color, :product_no_readd_link_font_size,
                                     :product_another_reserved_text_top, :product_another_reserved_text_bottom, :product_another_reserved_background, :product_another_reserved_text_color_top, :product_another_reserved_text_color_bottom, :product_another_reserved_timer_color, :product_another_reserved_border, :product_another_reserved_link, :product_another_reserved_link_color, :product_another_reserved_link_font_size,
                                     :product_grid_text, :product_grid_background, :product_grid_text_color, :product_grid_border, :product_grid_border_radius, :product_grid_padding, :product_grid_margin, :product_grid_reserved_background, :product_grid_reserved_text_color, :product_grid_reserved_border_radius, :product_grid_sold_text, :product_grid_sold_background, :product_grid_sold_text_color, :product_grid_sold_border_radius,
                                     :custom_css)
    end

end
