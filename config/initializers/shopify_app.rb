if Rails.env.production?
	ShopifyApp.configure do |config|
	  config.api_key = "e923492233842ad33bb2d54987e3a3fe"
	  config.secret = "647cd43249ebecfcf2b764a1386f0635"
	  config.redirect_uri = "https://cart-timer.herokuapp.com/auth/shopify/callback/"
	  # config.callback_url = "https://shopifytestasp.herokuapp.com/auth/shopify/callback/"
	  config.scope = "read_orders, read_products, read_content, read_script_tags, write_script_tags"
	  config.embedded_app = true
	end
end

if Rails.env.development?
	ShopifyApp.configure do |config|
	  config.api_key = "61c85c93e7b9b5acef15600c65ca4828"
	  config.secret = "4f8faabf9ffb419617d83ce156683373"
	  config.redirect_uri = "http://localhost:3000/auth/shopify/callback"
	  # config.callback_url = "https://shopifytestasp.herokuapp.com/auth/shopify/callback/"
	  config.scope = "read_orders, read_products, read_content, read_script_tags, write_script_tags"
	  config.embedded_app = true
	end
end
