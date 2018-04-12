class CreateTimeSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :time_sheets do |t|
      t.string :first_name
      t.date :job_date
      t.timestamps
    end
  end
end
