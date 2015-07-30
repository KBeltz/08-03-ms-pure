ActiveAdmin.register Location do
  menu priority: 4
  permit_params :location_name, :url, :map_image

  filter :location_name

  index do
    selectable_column
    id_column
    column :location_name
    column "Map Link", :url
    # reinstates default actions that are removed when a view is customized
    actions
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Location Details" do
      f.input :location_name
      f.input :url
      if f.object.map_image?
        image_tag f.object.map_image.url(:thumbnail)
      else
        f.input :map_image, :image_preview => true
      end
      # f.inputs "Attachment", :multipart => true do
      #   f.input :map_image, :as => :file, :hint => f.object.map_image.present? \
      #   ? image_tag(f.object.map_image.url(:thumb))
      #   : content_tag(:span, "No image yet")
      #   f.input :image_cache, :as => :hidden
      # end
    end
    f.button :Submit
  end

  show do
    attributes_table do
      row :id
      row :location_name
      row :url
      row :created_at
      row :updated_at
      row :map_image do
        image_tag location.map_image.url if :map_image?
      end
    end
    active_admin_comments
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
