ActiveAdmin.register NewProduct do
  menu :parent => "Nouveautes", :label => "english"
  index do
      column :titre do |new_product|
        link_to new_product.titre, admin_new_product_path(new_product)
      end
      column :created_at  
      column :updated_at 

      default_actions
    end

    # Filter only by title
    filter :created_at
    
 
end
