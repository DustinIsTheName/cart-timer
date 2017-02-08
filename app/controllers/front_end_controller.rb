class FrontEndController < ApplicationController

	skip_before_filter :verify_authenticity_token, only: :add_product

	def add_product
		headers['Access-Control-Allow-Origin'] = '*'

		shop = Shop.find_by_shopify_domain(params[:shopify_domain])
		cart = Cart.find_by_cart_token(params[:cart_token])

		puts Colorize.orange('HERE')
		puts Colorize.orange(cart)

		if cart

		else
			cart = Cart.new
			cart.expiry_date = Time.now.to_i + shop.option.starting_time.seconds
			cart.shop_id = shop.id
			# cart.save
		end

		render json: cart
	end

end