class AddCustomerToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :owner_id, :integer, null: false
  end
end
