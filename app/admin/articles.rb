ActiveAdmin.register Article , :as => "Avis Expert" do
  menu :parent => "Avis de l'expert", :label => "fr"
  index do
      column :titre do |article|
        link_to article.titre, admin_avis_expert_path(article)
      end
    column :created_at  
    column :updated_at 
  
    default_actions
  end

  
    form :html => { :enctype => "multipart/form-data" } do |f|
     f.inputs "Details" do
       f.input :titre
       f.input :texte
      f.input :image, :as => :file
      end
    f.buttons
    end

   
   # Filter only by title
   filter :created_at
   
end
