ShopifyApp.configure do |config|
  config.api_key = "e923492233842ad33bb2d54987e3a3fe"
  config.secret = "647cd43249ebecfcf2b764a1386f0635"
  config.redirect_uri = "https://cart-timer.herokuapp.com/auth/shopify/callback/"
  # config.callback_url = "https://shopifytestasp.herokuapp.com/auth/shopify/callback/"
  config.scope = "read_orders, read_products, read_content"
  config.embedded_app = true
end
