class RenameCustomerAttribute < ActiveRecord::Migration[5.2]
  def change
    rename_column :customers, :type, :customer_type
  end
end
