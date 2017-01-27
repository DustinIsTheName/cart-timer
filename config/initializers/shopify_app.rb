if Rails.env.production?
	ShopifyApp.configure do |config|
	  config.api_key = ENV["API_KEY"]
	  config.secret = ENV["SECRET"]
	  config.redirect_uri = "https://cart-timer.herokuapp.com/auth/shopify/callback/"
	  # config.callback_url = "https://shopifytestasp.herokuapp.com/auth/shopify/callback/"
	  config.scope = "read_products, write_products, read_script_tags, write_script_tags"
	  config.embedded_app = true
	end
end

if Rails.env.development?
	ShopifyApp.configure do |config|
	  config.api_key = ENV["API_KEY"]
	  config.secret = ENV["SECRET"]
	  config.redirect_uri = "https://localhost:3000/auth/shopify/callback"
	  # config.callback_url = "https://shopifytestasp.herokuapp.com/auth/shopify/callback/"
	  config.scope = "read_products, write_products, read_script_tags, write_script_tags, read_themes, write_themes"
	  config.embedded_app = true
	end
end
