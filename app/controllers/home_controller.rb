class HomeController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
  end

  def install_instructions
  end
end
