class APICallWorker

  include Sidekiq::Worker
  include RateLimitedWorker

  def perform(item)

    products = ShopifyAPI::Product.all

    products.each do |p|
      id = p.id
      single_product = ShopifyAPI::Product.find(id)
      puts Colorize.orange(single_product.title) + ' ' + Colorize.cyan(ShopifyAPI.credit_left)
    end

  end
end