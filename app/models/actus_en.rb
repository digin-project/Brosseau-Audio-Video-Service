class ActusEn < ActiveRecord::Base
  attr_accessible :texte
  
  default_scope :order => 'actus_ens.created_at DESC'
end
