ActiveAdmin.register Aubaine do
  menu :parent => "Aubaines", :label => "fr"
  index do
     column :titre do |aubaine|
       link_to aubaine.titre, admin_aubaine_path(aubaine)
     end
     column :created_at  
     column :updated_at 

     default_actions
   end

    form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Aubaine" do
        f.input :titre
        f.input :texte
       f.input :image, :as => :file
       end
     f.buttons
     end
     
     
     
   # Filter only by title
   filter :created_at
  
end
