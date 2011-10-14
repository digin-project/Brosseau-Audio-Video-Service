ActiveAdmin.register Nouveaute do

  index do
      column :titre do |nouveaute|
        link_to nouveaute.titre, admin_nouveaute_path(nouveaute)
      end
      column :created_at  
      column :updated_at 

      default_actions
    end

    # Filter only by title
    filter :created_at
    
     
end
