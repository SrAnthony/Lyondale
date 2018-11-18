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
#

class Property < ApplicationRecord
  has_many :rents
  has_many_attached :images

  enum category: { casa: 0, apartamento: 1, terreno: 2 }
end
