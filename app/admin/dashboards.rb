ActiveAdmin::Dashboards.build do
  
    section "Les actus" do
       ul do
             Actus.find(:all, :limit => 5) do |actu|
               li link_to(actu.texte, admin_actu_path(actu))
             end
           end
     end

     section "Les nouveautes" do
        ul do
              Nouveaute.find(:all, :limit => 5) do |nouveaute|
                li link_to(nouveaute.titre, admin_nouveaute_path(nouveaute))
              end
            end
     end
     
     section "L'avis de l'expert" do
         ul do
                Article.find(:all, :limit => 5) do |article|
                  li link_to(article.titre, admin_article_path(article))
                end
              end
      end
      
      
       section "Les aubaines" do
           ul do
                  Aubaine.find(:all, :limit => 5) do |aubaine|
                    li link_to(aubaine.titre, admin_aubaine_path(aubaine))
                  end
                end
        end
    
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
  #   section "Recent Posts" do
  #     ul do
  #       Post.recent(5).collect do |post|
  #         li link_to(post.title, admin_post_path(post))
  #       end
  #     end
  #   end
  
  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end
