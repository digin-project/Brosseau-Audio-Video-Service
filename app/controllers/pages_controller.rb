class PagesController < ApplicationController
  def home
     @title = t :home
     @body_id = "home"
     if I18n.locale == :fr_CA
       @actus = Actus.find( :all, :limit => 5)
       @expert = Article.first
       @nouveautes = Nouveaute.find( :all, :limit => 5)
     else
       @actus = ActusEn.find( :all, :limit => 5)
       @expert = Advice.first
       @nouveautes = NewProduct.find( :all, :limit => 5)
     end
   end

    def history
      @title = t :history
      @body_id = "secondary"
    end
    
    def company
      @title = t :company
      @body_id = "secondary"
     end
     
     def team
       @title = t :team
       @body_id = "secondary"
      end
    
      
   def contact
     @title = t :contact 
     @body_id = "secondary"
   end
   
   def audio
     @title = t :audio
     @body_id = "secondary"
   end
   
   def video
     @title = t :video
     @body_id = "secondary"
   end
   
   def automation
     @title = t :automation
     @body_id = "secondary"
   end
   
end
