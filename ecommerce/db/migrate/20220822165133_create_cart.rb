class CreateCart < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.integer :cart_id
      t.integer :user_id

      t.timestamps
    end
  end
end
