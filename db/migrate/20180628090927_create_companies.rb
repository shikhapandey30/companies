class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :Name
      t.integer :Country_id
      t.integer :State_id
      t.integer :City_id
      t.integer :Postcode
      t.datetime :Start_date
      t.boolean :Active

      t.timestamps
    end
  end
end
