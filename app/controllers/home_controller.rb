class HomeController < AuthenticatedController

  protect_from_forgery except: :timer_js
  
  def index
    @shop = Shop.find_by_shopify_domain(@shop_session.url)
    @option = @shop.option
  end

  def update

    @shop = Shop.find_by_shopify_domain(@shop_session.url)

  	@option = @shop.option

  	if @option.update_attributes(option_params)
			flash[:success] = "Successfully updated"
 			redirect_to root_path
		else
			render action: :index
		end

  end

  def install_instructions
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
			params.require(:option).permit(:enable, :custom_css, :timer_label_text, :timer_warning_message, :timer_expired_message, :description,
                                     :header_color, :header_font_size, :header_border_color, :header_background_color, :header_border_radius, :header_padding, :header_margin,
                                     :quick_view_color, :quick_view_font_size, :quick_view_border_color, :quick_view_background_color, :quick_view_border_radius, :quick_view_padding, :quick_view_margin,
                                     :message_color, :message_font_size, :message_border_color, :message_background_color, :message_border_radius, :message_padding, :message_margin,
                                     :button_1_text, :button_1_color, :button_1_font_size, :button_1_background_color, :button_1_padding, :button_1_border, :button_1_border_radius,
                                     :button_2_text, :button_2_color, :button_2_font_size, :button_2_background_color, :button_2_padding, :button_2_border, :button_2_border_radius )
		end

end
