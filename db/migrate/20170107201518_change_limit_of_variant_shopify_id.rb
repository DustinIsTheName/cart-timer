class ChangeLimitOfVariantShopifyId < ActiveRecord::Migration
  def change

  	change_column :variants, :shopify_id, :integer, :limit => 5

  end
end
