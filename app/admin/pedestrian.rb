ActiveAdmin.register Pedestrian do
  actions :all, except: [:create, :edit, :destroy]
  permit_params :female, :male, :disabled, :other

  index do
    column :female
    column :male
    column :disabled
    column :other
    # reinstates default actions that are removed when a view is customized
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
