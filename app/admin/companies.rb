ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :list, :of, :attributes, :on, :Name, :Country_id, :State_id, :City_id, :Postcode, :Start_date, :Active 
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
   form.input :Name, :label => 'Name'
   form.input :Country_id, :label => 'Countryid', :as => :select, :collection => Country.all.map{|u| ["#{u.country_name}", u.id]}   
   form.input :Country_id, :label => 'Stateid', :as => :select, :collection => State.all.map{|u| ["#{u.state_name}", u.id]}   
   form.input :Country_id, :label => 'Cityid', :as => :select, :collection => City.all.map{|u| ["#{u.city_name}", u.id]}   
   form.input :Postcode, :label => 'Postcode'
   form.input :Start_date, :label => 'Startdate'
   form.input :Active, :label => 'Active'
   #<%= form.submit %>
    
   

  end
   form.actions
 end


end
