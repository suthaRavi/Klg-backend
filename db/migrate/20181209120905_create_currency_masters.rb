class CreateCurrencyMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :currency_masters do |t|
      t.string :currency_id
      t.string :currency_code
      t.string :currency_description
      t.boolean :is_default_currency, default: false
      t.string :currency_image_url
      t.string :currency_status

      t.timestamps
    end
  end
end
