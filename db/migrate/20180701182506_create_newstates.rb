class CreateNewstates < ActiveRecord::Migration[5.2]
  def change
    create_table :newstates do |t|
      t.string :statename
      t.string :country

      t.timestamps
    end
  end
end
