class AddEndDateToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :enddate, :datetime
  end
end
