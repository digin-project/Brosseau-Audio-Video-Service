ActiveAdmin.register Sale do
  menu :parent => "Aubaines", :label => "en"
  index do
     column :titre do |sale|
       link_to sale.titre, admin_sale_path(sale)
     end
     column :created_at  
     column :updated_at 

     default_actions
   end

    form :html => { :enctype => "multipart/form-data" } do |f|
       f.inputs "Sales" do
         f.input :titre
         f.input :texte
        f.input :image, :as => :file
        end
      f.buttons
      end
      
      
      
   # Filter only by title
   filter :created_at
end
