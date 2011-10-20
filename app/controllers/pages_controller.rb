class PagesController < ApplicationController
  def home
     @title = t :home
     @body_id = "home"
     if I18n.locale == :fr_CA
       @actus = Actus.find( :all, :limit => 5)
       @expert = Article.first 
     else
       @actus = ActusEn.find( :all, :limit => 5)
       @expert = Advice.first
     end
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
