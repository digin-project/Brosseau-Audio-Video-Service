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

   # Filter only by title
   filter :created_at
end
