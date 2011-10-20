# == Schema Information
#
# Table name: articles
#
#  id         :integer         not null, primary key
#  titre      :string(255)
#  texte      :text
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Article < ActiveRecord::Base
  attr_accessible :titre, :texte, :image
  
  default_scope :order => 'articles.created_at DESC'
end
