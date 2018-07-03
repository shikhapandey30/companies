class CreateNewnodes < ActiveRecord::Migration[5.2]
  def change
    create_table :newnodes do |t|
      t.string :nodename
      t.string :place

      t.timestamps
    end
  end
end
