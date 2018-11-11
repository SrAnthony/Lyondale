# == Schema Information
#
# Table name: customers
#
#  id            :bigint(8)        not null, primary key
#  name          :string(255)
#  rg            :string(255)
#  cpf           :string(255)
#  birthday      :date
#  phone         :string(255)
#  cellphone     :string(255)
#  email         :string(255)
#  address       :string(255)
#  occupation    :string(255)
#  income        :float(24)
#  customer_type :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
