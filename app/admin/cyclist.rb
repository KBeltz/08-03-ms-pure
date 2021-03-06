ActiveAdmin.register Cyclist do
  menu parent: "Count Data"
  config.sort_order = 'id_asc'
  actions :all, except: [:create, :edit, :destroy, :new]
  batch_action :destroy, false

  permit_params :quantity, :sex, :helmet, :sidewalk, :wrong_way

  filter :quantity
  filter :sex, as: :select, :collection => [["Male", true], ["Female", false]]
  filter :helmet
  filter :sidewalk
  filter :wrong_way

  index do
    column :quantity
    column :sex do |cyclist|
      if cyclist.sex == true
        "Male"
      else
        "Female"
      end
    end
    column :helmet
    column :sidewalk
    column :wrong_way
    actions
  end

  show do
    attributes_table do
      row :id
      row :quantity
      row :sex do |cyclist|
        if cyclist.sex == true
          "Male"
        else
          "Female"
        end
      end
      row :helmet do |cyclist|
        if cyclist.helmet == true
          "Yes"
        else
          "No"
        end
      end
      row :sidewalk do |cyclist|
        if cyclist.sidewalk == true
          "Yes"
        else
          "No"
        end
      end
      row :wrong_way do |cyclist|
        if cyclist.sex == true
          "Yes"
        else
          "No"
        end
      end
      row :shift_id
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
