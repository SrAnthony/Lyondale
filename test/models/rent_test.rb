# == Schema Information
#
# Table name: rents
#
#  id          :bigint(8)        not null, primary key
#  customer_id :string(255)
#  property_id :string(255)
#  value       :string(255)
#  start_date  :date
#  end_date    :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class RentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
