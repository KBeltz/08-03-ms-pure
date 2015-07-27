ActiveAdmin.register Cyclist do
  actions :all, except: [:create, :edit, :destroy]

  permit_params :female_with_helmet, :female_no_helmet, :female_sidewalk, :female_wrong_way, :male_with_helmet, :male_no_helmet, :male_sidewalk, :male_wrong_way


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
