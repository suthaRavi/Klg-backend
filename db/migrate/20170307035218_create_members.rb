class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :member_id
      t.string :first_name
      t.string :last_name
      t.string :department
      t.string :role
      t.string :reporting_id
      t.date :join_date
      t.date :end_date
      t.string :category
      t.float :pay_rate
      t.string :status
      t.timestamps
    end
  end
end
