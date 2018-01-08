class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :job_id, :null => false
      t.string :name, :null => false
      t.date  :order_date, :null => false
      t.date  :shipping_date, :null => false
      t.date  :shipped_date
      t.decimal :estimated_hour, :null => false
      t.decimal :actual_hours
      t.string  :status, :null => false
      t.string  :previousjob_id
      t.timestamps
    end
  end
end
