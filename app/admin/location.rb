ActiveAdmin.register Location do
  menu priority: 4
  permit_params :location_name, :url

  filter :location_name

  index do
    selectable_column
    id_column
    column :location_name
    column "Map Link", :url

    # reinstates default actions that are removed when a view is customized
    actions
  end

  form do |f|
    f.inputs "Location Details" do
      f.input :location_name
      f.input :url
      if f.object.map_image?
        image_tag f.object.map_image.url(:thumbnail)
      else
        f.input :map_image, :as => :file
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
    @location = Location.find(params[:id])
    selectable_column
    id_column
    column :location_name
    column "Map Link", :url
    image_tag("/locations/#{@location.id}/map_image/#{@location.map_image_filename}" if @location.map_image_filename?, :alt => "Location Map")
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
