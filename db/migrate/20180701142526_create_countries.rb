class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.integer :country_id
      t.string :country_name

      t.timestamps
    end
  end
end
