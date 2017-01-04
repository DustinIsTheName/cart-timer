class APICallWorker

  include Sidekiq::Worker
  include RateLimitedWorker

  def perform(url, page, page_size)

    puts Colorize.purple(sidekiq_options_hash)

    products = ShopifyAPI::Product.all

    products.each do |p|
      id = p.id
      single_product = ShopifyAPI::Product.find(id)
      puts Colorize.orange(single_product.title) + ' ' + Colorize.cyan(ShopifyAPI.credit_left)

      new_product = ShopifyAPI::Product.new
      new_product.shopify_id = single_product.id
      new_product.quantity = single_product.inventory_quantity
      new_product.shop_id = Shop.find_by_shopify_domain(@shop_session.url).id

      new_product.save
    end

  end
end