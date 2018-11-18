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

class Rent < ApplicationRecord
  belongs_to :customer
  belongs_to :property
end
