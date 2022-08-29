class UpdateTypeColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :type
    add_column :users, :admin, :boolean, default: false
  end
end
