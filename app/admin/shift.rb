ActiveAdmin.register Shift do
  # belongs_to :user
  menu priority: 5
  permit_params :user_id, :location_id, :weather_id, :start_time, :end_time

  filter :user_id, :as => :select
  filter :location_id, :as => :select
  filter :weather_id, :as => :select

  form do |f|
    f.inputs do
      f.input :user
      f.input :location, :member_label => :location_name
      f.input :start_time, :as => :datepicker, label: "Shift Start Date"
      f.input :start_time, :as => :time_picker, :input_html => { :step => :hour }
      f.input :end_time, :as => :datepicker, label: "Shift End Date"
      f.input :end_time, :as => :time_picker, :input_html => { :step => :hour }
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
