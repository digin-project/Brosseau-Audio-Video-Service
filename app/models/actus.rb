class Actus < ActiveRecord::Base
  attr_accessible :texte
  
  default_scope :order => 'actus.created_at DESC'
end
