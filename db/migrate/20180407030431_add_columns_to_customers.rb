class AddColumnsToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :state, :string, null: false
    add_column :customers, :phone, :string, null: false
    add_column :customers, :fax, :string, null: false
  end
end
