class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :member_id, :null => false
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :department, :null => false
      t.string :role, :null => false
      t.string :reporting_id, :null => false
      t.date :join_date, :null => false
      t.date :end_date
      t.string :category, :null => false
      t.float :pay_rate, :null => false
      t.string :status, :null => false
      t.timestamps
    end
  end
end
