class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.date :birthday
      t.string :phone
      t.string :cellphone
      t.string :email
      t.string :address
      t.string :occupation
      t.float :income
      t.integer :type

      t.timestamps
    end
  end
end
