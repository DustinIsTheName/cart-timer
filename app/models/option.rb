class Option < ActiveRecord::Base
	belongs_to :shop

	before_save :default_values

	# validates :button_1_text, presence: true
	# validates :button_2_text, presence: true

	def json
		self.attributes.except("shop_id", "created_at", "updated_at").to_json
	end

end