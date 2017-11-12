class CreateFulltimes < ActiveRecord::Migration[5.0]
  def change
    create_table :fulltimes do |t|
      t.integer :value
      t.string :name

      t.timestamps
    end
  end
end
