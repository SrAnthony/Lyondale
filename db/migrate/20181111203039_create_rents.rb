class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.string :customer_id
      t.string :property_id
      t.string :value
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
