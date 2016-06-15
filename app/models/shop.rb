class Shop < ActiveRecord::Base
  include ShopifyApp::Shop

  has_one :option
end
