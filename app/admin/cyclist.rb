ActiveAdmin.register Cyclist do
  actions :all, except: [:create, :edit, :destroy, :new]
  batch_action :destroy, false

  permit_params :female_with_helmet, :female_no_helmet, :female_sidewalk, :female_wrong_way, :male_with_helmet, :male_no_helmet, :male_sidewalk, :male_wrong_way

  index do
    column :female_with_helmet
    column :female_no_helmet
    column :female_sidewalk
    column :female_wrong_way
    column :male_with_helmet
    column :male_no_helmet
    column :male_sidewalk
    column :male_wrong_way
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
