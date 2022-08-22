class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.integer :payment_id
      t.string :fullname
      t.string :contact
      t.string :address
      t.string :postcode
      t.datetime :date
      t.string :payment

      t.timestamps
    end
  end
end
