# == Schema Information
#
# Table name: advices
#
#  id         :integer         not null, primary key
#  titre      :string(255)
#  texte      :text
#  Image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Advice < ActiveRecord::Base
  attr_accessible :titre, :texte, :image
  
  default_scope :order => 'advices.created_at DESC'
end
