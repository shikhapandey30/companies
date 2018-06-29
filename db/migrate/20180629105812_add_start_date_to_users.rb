class AddStartDateToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :startdate, :datetime
  end
end
