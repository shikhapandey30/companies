class CreateAddCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :add_companies do |t|
      t.string :company
      t.string :country
      t.string :state
      t.string :city
      t.integer :postcode
      t.datetime :startdate
      t.boolean :active

      t.timestamps
    end
  end
end
