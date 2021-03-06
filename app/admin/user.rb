ActiveAdmin.register User do
  menu priority: 3, label: "Volunteers"
  config.sort_order = 'id_asc'
  actions :all, except: [:edit]
  permit_params :first_name, :last_name, :email, :password

  filter :first_name
  filter :last_name
  filter :email

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
      f.input :password
      if f.object.new_record?
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
