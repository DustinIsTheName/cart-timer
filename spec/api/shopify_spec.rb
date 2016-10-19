require 'spec_helper'

describe "Shopify" do

	it "authenticates with Oauth" do

		# response = ShopifyAPI::Product.find(:all, params: {limit: 1})
		print 'prod: ' 
		puts ShopifyAPI::Base.site
		# expect(response).to be_success

	end

end