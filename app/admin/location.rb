ActiveAdmin.register Location do
  permit_params :location_name, :url

  index do
    selectable_column
    id_column
    column :location_name
    column "Map Link", :url
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
