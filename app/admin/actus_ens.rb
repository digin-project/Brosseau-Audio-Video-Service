ActiveAdmin.register ActusEn , :as => "News" do
  menu :parent => "Actualites", :label => "english"
  index do
    column :texte do |actu|
      link_to actu.texte, admin_news_path(actu)
    end
    column :created_at  
    column :updated_at 
  

    default_actions
  end

  # Filter only by title
  filter :created_at
end
