# == Schema Information
#
# Table name: actus
#
#  id         :integer         not null, primary key
#  texte      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Actus < ActiveRecord::Base
  puret :texte
  attr_accessible :texte
  
  default_scope :order => 'actus.created_at DESC'
end
