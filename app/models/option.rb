class Option < ActiveRecord::Base
	belongs_to :shop

	def json
		self.attributes.except("shop_id", "created_at", "updated_at").to_json
	end

end