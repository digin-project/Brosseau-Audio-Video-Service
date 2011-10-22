ActiveAdmin.register NewProduct do
  menu :parent => "Nouveautes", :label => "en"
  index do
      column :titre do |new_product|
        link_to new_product.titre, admin_new_product_path(new_product)
      end
      column :created_at  
      column :updated_at 

      default_actions
    end


    form :html => { :enctype => "multipart/form-data" } do |f|
       f.inputs "New Products" do
         f.input :titre
         f.input :texte
        f.input :image, :as => :file
        end
      f.buttons
      end
      
      
      
    # Filter only by title
    filter :created_at
    
 
end
