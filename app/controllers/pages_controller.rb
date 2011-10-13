class PagesController < ApplicationController
  def home
     @title = t :home
     @body_id = "home"
     @actu = Actus.first
   end

    def about
      @title = t :about 
      @body_id = "secondary"
    end
    
    def products
      @title = t :products
      @body_id = "secondary"
     end
     
    def automation
      @title = t :automation 
      @body_id = "secondary"
    end
      
   def contact
     @title = t :contact 
     @body_id = "secondary"
   end
end
