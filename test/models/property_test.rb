# == Schema Information
#
# Table name: properties
#
#  id          :bigint(8)        not null, primary key
#  description :string(255)
#  address     :string(255)
#  category    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :integer          not null
#

require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
