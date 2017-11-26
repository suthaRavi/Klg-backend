class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_id
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :zipCode
      t.string :country

      t.timestamps
    end
  end
end
