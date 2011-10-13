# == Schema Information
#
# Table name: actus
#
#  id         :integer         not null, primary key
#  texte      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ActusTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
