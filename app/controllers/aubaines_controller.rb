class AubainesController < ApplicationController
  def show
     @title = t :deals
     @body_id = "secondary"
     if I18n.locale == :fr_CA
       @aubaines = Aubaine.all
     else
       @aubaines = Sale.all
     end
  end


end
