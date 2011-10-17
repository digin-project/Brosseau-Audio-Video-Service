ActiveAdmin.register Advice, :as => "Expert Advice" do
  menu :parent => "Avis de l'expert", :label => "en"
  
   index do
     column :titre do |advice|
       link_to advice.titre, admin_expert_advice_path(advice)
     end
     column :created_at  
     column :updated_at 

     default_actions
   end

   # Filter only by title
   filter :created_at
end
