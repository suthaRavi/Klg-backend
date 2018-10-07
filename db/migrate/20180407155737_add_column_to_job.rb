class AddColumnToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :customer_id, :string, null: false
  end
end
