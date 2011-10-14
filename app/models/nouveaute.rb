class Nouveaute < ActiveRecord::Base
  validates :titre, :presence => true
end
