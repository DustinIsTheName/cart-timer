class Cart < ActiveRecord::Base

  has_many :reserveds
  has_many :variants, through: :reserveds
  belongs_to :shop

end
