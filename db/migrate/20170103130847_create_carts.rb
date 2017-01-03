class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|

    	t.integer :expiry_date
    	t.integer :time_added_to_checkout
    	t.integer :original_expiry_date
    	t.string :cart_token
    	t.integer :shop_id

      t.timestamps null: false
    end
  end
end
