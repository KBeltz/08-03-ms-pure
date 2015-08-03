ActiveAdmin.register Location do
  menu priority: 4
  config.sort_order = 'id_asc'
  permit_params :location_name, :url, :map_image, :map_image_cache

  filter :location_name

  index do
    selectable_column
    id_column
    column :location_name
    column "Map Link", :url do |location|
      link_to "Map", location.url
    end
    # reinstates default actions that are removed when a view is customized
    actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Location Details" do
      f.input :location_name
      f.input :url
      f.input :map_image
    end
    f.button :Submit
  end

  show do
    attributes_table do
      row :id
      row :location_name
      row "Map Link", :url do
        link_to "Map", location.url
      end
      row :created_at
      row :updated_at
      row :map_image do
        image_tag location.map_image.url if :map_image?
      end
    end
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
