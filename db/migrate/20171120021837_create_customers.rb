class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_id, null: false
      t.string :name, null: false
      t.string :address1, null: false
      t.string :address2
      t.string :city, null: false
      t.string :zipCode, null: false
      t.string :country, null: false

      t.timestamps
    end
  end
end
