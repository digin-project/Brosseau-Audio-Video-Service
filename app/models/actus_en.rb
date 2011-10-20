# == Schema Information
#
# Table name: actus_ens
#
#  id         :integer         not null, primary key
#  texte      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class ActusEn < ActiveRecord::Base
  attr_accessible :texte
  
  default_scope :order => 'actus_ens.created_at DESC'
end
