# == Schema Information
#
# Table name: sales
#
#  id         :integer         not null, primary key
#  titre      :string(255)
#  texte      :text
#  Image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Sale < ActiveRecord::Base
end
