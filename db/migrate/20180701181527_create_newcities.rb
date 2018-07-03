class CreateNewcities < ActiveRecord::Migration[5.2]
  def change
    create_table :newcities do |t|
      t.string :cityname
      t.string :state

      t.timestamps
    end
  end
end
