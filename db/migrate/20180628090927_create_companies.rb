class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :Name
      t.string :Country
      t.string :State
      t.string :City
      t.integer :Postcode
      t.date :Startdate
      t.string :Active

      t.timestamps
    end
  end
end
