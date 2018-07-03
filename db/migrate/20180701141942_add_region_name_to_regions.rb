class AddRegionNameToRegions < ActiveRecord::Migration[5.2]
  def change
  	  	add_column :regions, :regionname, :string

  end
end
