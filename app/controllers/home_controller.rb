class HomeController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})

    @option = Option.first
  end

  def update

  	@option = Option.first

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
			params.require(:option).permit(:enable, :custom_css, :timer_label_text, :timer_warning_message, :timer_expired_message, :description)
		end

end
