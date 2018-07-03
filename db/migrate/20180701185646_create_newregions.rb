class CreateNewregions < ActiveRecord::Migration[5.2]
  def change
    create_table :newregions do |t|
      t.string :regionname

      t.timestamps
    end
  end
end
