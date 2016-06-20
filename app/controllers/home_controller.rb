class HomeController < AuthenticatedController
  def index
    @shop = Shop.find_by_shopify_domain(@shop_session.url)

    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})

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

  private

		def option_params
			params.require(:option).permit(:enable, :custom_css, :timer_label_text, :timer_warning_message, :timer_expired_message, :description,
                                     :header_color, :header_font_size, :header_border_color, :header_background_color, :header_border_radius, :header_padding, :header_margin,
                                     :quick_view_color, :quick_view_font_size, :quick_view_border_color, :quick_view_background_color, :quick_view_border_radius, :quick_view_padding, :quick_view_margin)
		end

end
