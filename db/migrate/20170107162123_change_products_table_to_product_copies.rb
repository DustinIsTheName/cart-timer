class ChangeProductsTableToProductCopies < ActiveRecord::Migration
  def change
  	rename_table :products, :variants
  end
end
