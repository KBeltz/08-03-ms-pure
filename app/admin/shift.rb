ActiveAdmin.register Shift do
  menu priority: 5
  permit_params :user_id, :location_id, :weather_id, :start_time, :end_time

  form do |f|
    f.inputs do
      f.input :user, :member_label => :last_name
      f.input :location, :member_label => :location_name
      f.input :start_time
      f.input :end_time
    end
    f.button :Submit
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
