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

class Property < ApplicationRecord
  belongs_to :customer, class_name: 'Customer', foreign_key: 'owner_id'
  has_many :rents
  has_many_attached :images

  enum category: { casa: 0, apartamento: 1, terreno: 2 }

  def category_icon
    case category
    when 'casa' then 'home'
    when 'apartamento' then 'apartment'
    when 'terreno' then 'sun'
    end
  end

  def owner
    customer
  end
end
