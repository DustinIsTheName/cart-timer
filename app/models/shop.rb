class Shop < ActiveRecord::Base
  include ShopifyApp::Shop

  has_one :option
  has_many :carts
  has_many :products

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

  private

  	def build_options_set
  		build_option
  		true
  	end

end
