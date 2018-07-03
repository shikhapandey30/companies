class CreateNewcountries < ActiveRecord::Migration[5.2]
  def change
    create_table :newcountries do |t|
      t.string :countryname
      t.integer :code

      t.timestamps
    end
  end
end
