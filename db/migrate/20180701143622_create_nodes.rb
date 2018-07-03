class CreateNodes < ActiveRecord::Migration[5.2]
  def change
    create_table :nodes do |t|
      t.integer :node_id
      t.string :node_name
      t.integer :place_id

      t.timestamps
    end
  end
end
