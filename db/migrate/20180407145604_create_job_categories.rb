class CreateJobCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :job_categories do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
