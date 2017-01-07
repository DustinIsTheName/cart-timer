class Shop < ActiveRecord::Base
  include ShopifyApp::Shop

  has_one :option
  has_many :carts
  has_many :variants

  before_create :build_options_set

  def createScriptTag
    script_tags = ShopifyAPI::ScriptTag.all

    if Rails.env.production?
      script_source = 'https://cart-timer.herokuapp.com/timer-js.js'
    else
      script_source = 'https://localhost:3000/timer-js.js'
    end


    script_tag_found = false
    script_tags.each do |script_tag|
      if script_tag.src == script_source
        script_tag_found = true
      end
    end
 
    unless script_tag_found
      new_script_tag = ShopifyAPI::ScriptTag.new
      new_script_tag.event = 'onload'
      new_script_tag.src = script_source
      new_script_tag.save
      puts Colorize.green('created script tag')
    else
      puts Colorize.cyan('script tag already created')
    end
  end

  def syncVariants(session)

    ShopifyAPI::Base.activate_session(session)

    total_products = ShopifyAPI::Product.count
    total_pages = (total_products / 250.0).ceil

    1.upto(total_pages) do |page|

      products = ShopifyAPI::Product.find(:all, params: {limit: 250, page: page})

      products.each do |p|
        # puts Colorize.orange(single_product.title) + ' ' + Colorize.cyan(ShopifyAPI.credit_left)

        variants = p.variants

        variants.each do |v|

          local_variant = Variant.new

          local_variant.shopify_id = v.id
          local_variant.quantity = v.inventory_quantity
          local_variant.shop_id = id

          puts Colorize.green(local_variant);

          # local_variant.save

        end

      end

    end

  end

  private

  	def build_options_set
  		build_option
  		true
  	end

end
