class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :member_id
      t.string :first_name
      t.string :last_name
      t.integer :department
      t.integer :role
      t.string :reporting_id

      t.timestamps
    end
  end
end
