ActiveAdmin.register Actus do
  menu :parent => "Actualités", :label => "français"
  index do
    column :texte do |actu|
      link_to actu.texte, admin_actu_path(actu)
    end
    column :created_at  
    column :updated_at 
  

    default_actions
  end

  # Filter only by title
  filter :created_at
end
