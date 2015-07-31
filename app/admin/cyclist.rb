ActiveAdmin.register Cyclist do
  menu parent: "Count Data"
  actions :all, except: [:create, :edit, :destroy, :new]
  batch_action :destroy, false

  permit_params :quantity, :sex, :helmet, :wrong_way
  index do
    column :quantity
    column :sex
    column :helmet
    column :sidewalk
    column :wrong_way
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
