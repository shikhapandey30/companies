ActiveAdmin.register Country do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :list, :of, :attributes, :on, :country_id, :country_name, :state_id, :state_name
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
   form do |form|
   form.inputs do
   form.input :country_id, :label => 'Country name'
  end
 end
end
