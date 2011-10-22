class ArticlesController < ApplicationController
  def show
     @title = t :expert_title
     @body_id = "secondary"
     if I18n.locale == :fr_CA
       @expert = Article.first 
     else
       @expert = Advice.first
     end
  end


end
