ActiveAdmin.register Car do
  permit_params :marque, :modele, :année, :prix, :km, :driver_id, { pictures: [] }
  form do |f|
    f.inputs do
      f.input :driver_id
      f.input :cover_picture, as: :file
      f.input :pictures, as: :file, input_html: { multiple: true }
      f.input :pictures, as: :file, input_html: { multiple: true }
      f.input :pictures, as: :file, input_html: { multiple: true }
      f.input :pictures, as: :file, input_html: { multiple: true }
      f.input :pictures, as: :file, input_html: { multiple: true }
      f.input :pictures, as: :file, input_html: { multiple: true }
      f.input :pictures, as: :file, input_html: { multiple: true }
      f.input :marque
      f.input :modele
      f.input :année
      f.input :prix
      f.input :km
    end
    f.actions
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
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
