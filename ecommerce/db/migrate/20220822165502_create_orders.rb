class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.float :actual_price
      t.float :final_price

      t.timestamps
    end
  end
end
