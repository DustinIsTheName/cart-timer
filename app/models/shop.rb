class Shop < ActiveRecord::Base
  include ShopifyApp::Shop

  has_one :option
  has_many :carts
  has_many :variants

  before_create :build_options_set

  def createScriptTag(file)

    asset = ShopifyAPI::Asset.new
    asset.key = "assets/witty_cart_timer.js"
    asset.value = file
    asset.save

    ShopifyAPI::ScriptTag.first.destroy
 
    new_script_tag = ShopifyAPI::ScriptTag.new
    new_script_tag.event = 'onload'
    new_script_tag.src = asset.public_url
    new_script_tag.save
    puts Colorize.cyan(asset.public_url)
    puts Colorize.green('created script tag')

  end

  def syncVariants(session)

    ShopifyAPI::Base.activate_session(session)

    total_products = ShopifyAPI::Product.count
    total_pages = (total_products / 250.0).ceil
    total_variant_ids = []

    1.upto(total_pages) do |page|

      products = ShopifyAPI::Product.find(:all, params: {limit: 250, page: page})

      products.each do |p|

        variants = p.variants
        total_variant_ids += variants.map { |v| v.id }

        variants.each do |v|

          if Variant.where(shopify_id: v.id).empty?

            local_variant = Variant.new
            local_variant.shopify_id = v.id
            local_variant.quantity = v.inventory_quantity
            local_variant.shop_id = id

            local_variant.save
            puts Colorize.green('created!')

          else

            local_variant = Variant.find_by_shopify_id(v.id)
            local_variant.update_attributes(quantity: v.inventory_quantity)
            puts Colorize.cyan('updated!')

          end
        end
      end
    end

    products_to_delete = Variant.all.pluck(:shopify_id) - total_variant_ids

    products_to_delete.each do |d|

      Variant.find_by_shopify_id(d).destroy
      puts Colorize.red('deleted!')

    end

  end

  private

  	def build_options_set
  		build_option
  		true
  	end

end
