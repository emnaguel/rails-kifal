ActiveAdmin.register Driver do
   index do
    selectable_column
    column :id
    column :first_name
    column :last_name
    column :email
    column :téléphone
    column :rdv
    actions
  end

   form do |f|
    f.inputs "Identity" do
    f.input :first_name
    f.input :last_name
    f.input :email
    f.input :téléphone
    f.input :rdv
    end

    f.actions
  end
  permit_params :first_name, :last_name, :email, :téléphone, :rdv
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
