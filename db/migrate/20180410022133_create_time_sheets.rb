class CreateTimeSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :time_sheets do |t|
      t.string :first_name, null: false
      t.date :job_date, null: false
      t.timestamps
    end
  end
end
