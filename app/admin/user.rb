ActiveAdmin.register User do
  menu priority: 3, label: "Volunteers"
  permit_params :username, :email, :password, :location_id

  index do
    selectable_column
    id_column
    column :username
    column :email
    column "Location", :location_id, :location_id do |i|
      @location = Location.find(i)
      @location.location_name
    end
    # reinstates default actions that are removed when a view is customized
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
