class ArticlesController < ApplicationController
  def show
     @title = t :expert_title
     @body_id = "secondary"
     if I18n.locale == :fr_CA
       @expert = Article.find(1) 
     else
       @expert = Advice.find(1) 
     end
  end

  def read
  end

end
