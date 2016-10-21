class Shop < ActiveRecord::Base
  include ShopifyApp::Shop

  has_one :option
  before_create :build_options_set

  private

  	def build_options_set
  		build_option
  		true
  	end

  	def createScriptTag
  		# START HERE; PERHAPS A CHECK INTO HANDLING APP-WIDE API LIMITS
  	end

end
