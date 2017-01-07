class Variant < ActiveRecord::Base

  has_many :reserveds
  has_many :carts, through: :reserveds
  belongs_to :shop

end
