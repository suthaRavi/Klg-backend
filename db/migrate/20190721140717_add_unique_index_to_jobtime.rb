class AddUniqueIndexToJobtime < ActiveRecord::Migration[5.0]
  def change
    add_index :time_sheets, [:first_name, :job_date], unique: true
  end
end
