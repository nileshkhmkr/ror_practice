class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.integer :stock_item_id
      t.integer :cart_id
      t.integer :order_id
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
