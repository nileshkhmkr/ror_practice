class CreateAddress < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :address
      t.string :contact

      t.timestamps
    end
  end
end
