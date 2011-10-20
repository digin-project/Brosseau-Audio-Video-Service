# == Schema Information
#
# Table name: aubaines
#
#  id         :integer         not null, primary key
#  titre      :string(255)
#  texte      :text
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class AubaineTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
