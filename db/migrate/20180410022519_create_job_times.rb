class CreateJobTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :job_times do |t|
      t.belongs_to :time_sheet, index: true
      t.string :job_id, null: false
      t.string :job_department, null: false
      t.string :job_category, null: false
      t.float :job_time, null: false
      t.boolean :is_overtime, default: false
      t.timestamps
    end
  end
end
