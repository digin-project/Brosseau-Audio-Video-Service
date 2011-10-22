class NouveautesController < ApplicationController
  def index
    @title = t :nouveautes_title
     @body_id = "secondary"
     if I18n.locale == :fr_CA
       @nouveautes = Nouveaute.all
     else
       @nouveautes = NewProduct.all
     end
  end
  
end
