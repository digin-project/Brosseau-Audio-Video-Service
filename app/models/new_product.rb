# == Schema Information
#
# Table name: new_products
#
#  id         :integer         not null, primary key
#  titre      :string(255)
#  texte      :text
#  Image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class NewProduct < ActiveRecord::Base
end
