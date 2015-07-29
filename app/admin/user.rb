ActiveAdmin.register User do
  menu priority: 3, label: "Volunteers"
  permit_params :first_name, :last_name, :email, :password, :location_id #, :commit, :utf8

  filter :first_name
  filter :last_name
  filter :email
  filter :location_id, as: :select

  # index download_links: [:pdf]
  # would actually need to implement the PDF rendering, but the
  # types of downloads available can be customized

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    actions
  end

  form do |f|
    f.inputs "Volunteer Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :location_id
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
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
