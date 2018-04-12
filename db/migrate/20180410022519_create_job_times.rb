class CreateJobTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :job_times do |t|
      t.belongs_to :time_sheet, index: true
      t.string :job_id
      t.string :job_department
      t.string :job_category
      t.float :job_time
      t.boolean :is_overtime
      t.timestamps
    end
  end
end
