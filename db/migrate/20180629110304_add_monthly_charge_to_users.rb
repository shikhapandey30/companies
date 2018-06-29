class AddMonthlyChargeToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :monthlycharge, :decimal
  end
end
