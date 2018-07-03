class CreateNewplaces < ActiveRecord::Migration[5.2]
  def change
    create_table :newplaces do |t|
      t.string :nodename
      t.string :placename
      t.string :nodename
      t.string :company

      t.timestamps
    end
  end
end
