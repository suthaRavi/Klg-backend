class AddColumnsToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :state, :string
    add_column :customers, :phone, :string
    add_column :customers, :fax, :string
  end
end
