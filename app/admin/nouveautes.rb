ActiveAdmin.register Nouveaute do
  menu :parent => "Nouveautes", :label => "fr"
  index do
      column :titre do |nouveaute|
        link_to nouveaute.titre, admin_nouveaute_path(nouveaute)
      end
      column :created_at  
      column :updated_at 

      default_actions
    end


    form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Nouveautes" do
        f.input :titre
        f.input :texte
       f.input :image, :as => :file
       end
     f.buttons
     end
     
     
    # Filter only by title
    filter :created_at
    
     
end
