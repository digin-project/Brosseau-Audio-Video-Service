ActiveAdmin.register Article do
  index do
    column :titre do |article|
      link_to article.titre, admin_article_path(article)
    end
    column :created_at  
    column :updated_at 
  
    default_actions
  end

  # Filter only by title
  filter :created_at
end
