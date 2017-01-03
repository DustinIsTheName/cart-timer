class Cart < ActiveRecord::Base

  has_many :reserveds
  has_many :products, through: :reserveds
  belongs_to :shop

end
