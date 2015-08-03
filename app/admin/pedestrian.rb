ActiveAdmin.register Pedestrian do
  menu parent: "Count Data"
  actions :all, except: [:create, :edit, :destroy, :new]
  batch_action :destroy, false

  permit_params :sex, :disabled, :other, :quantity

  filter :sex
  filter :disabled
  filter :other

  index do
    column :quantity
    column :sex do |cyclist|
      if cyclist.sex == true
        "Male"
      else
        "Female"
      end
    end
    column :disabled
    column :other
    # reinstates default actions that are removed when a view is customized
    actions
  end

  show do
    attributes_table do
      row :id
      row :quantity
      row :sex do |ped|
        if ped.sex == true
          "Male"
        else
          "Female"
        end
      end
      row :disabled do |ped|
        if ped.disabled == true
          "Yes"
        else
          "No"
        end
      end
      row :other do |ped|
        if ped.other == true
          "Yes"
        else
          "No"
        end
      end
      row :created_at
      row :updated_at
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
