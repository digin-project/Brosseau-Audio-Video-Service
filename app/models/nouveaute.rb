# == Schema Information
#
# Table name: nouveautes
#
#  id         :integer         not null, primary key
#  titre      :string(255)
#  texte      :text
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Nouveaute < ActiveRecord::Base
  validates :titre, :presence => true
end
