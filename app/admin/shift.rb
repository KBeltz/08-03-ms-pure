ActiveAdmin.register Shift do
  menu priority: 5
  config.sort_order = 'id_asc'
  permit_params :user_id, :location_id, :weather_id, :start_time, :end_time

  filter :user_id, label: "Volunteer", as: :select, collection: proc { User.all }
  filter :location_id, label: "Location", :as => :select, collection: proc { Location.all }
  filter :weather_id, label: "Weather", :as => :select, collection: proc { Weather.all }

  index do
    column "Volunteer", :user_id do |user|
      volunteer = User.find(user.user_id)
      volunteer.full_name
    end
    column :location_id do |location|
      place = Location.find(location.location_id)
      place.location_name
    end
    column :weather_id do |w|
      if w.weather_id == nil
        "Weather not yet entered"
      else
        forecast = Weather.find(w.weather_id)
        forecast.weather
      end
    end
    column "Shift Start Time", :start_time
    actions
  end

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
