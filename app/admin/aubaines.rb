ActiveAdmin.register Aubaine do
  index do
     column :titre do |aubaine|
       link_to aubaine.titre, admin_aubaine_path(aubaine)
     end
     column :created_at  
     column :updated_at 

     default_actions
   end

   # Filter only by title
   filter :created_at
  
end
