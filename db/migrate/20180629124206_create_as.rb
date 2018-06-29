class CreateAs < ActiveRecord::Migration[5.2]
  def change
    create_table :as do |t|

      t.timestamps
    end
  end
end
