class AddRoleNameToUserRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :user_roles, :rolename, :string  
end
end
