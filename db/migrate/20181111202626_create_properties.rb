class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :description
      t.string :address
      t.integer :category

      t.timestamps
    end
  end
end
