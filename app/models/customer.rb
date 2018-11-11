# == Schema Information
#
# Table name: customers
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  rg         :string(255)
#  cpf        :string(255)
#  birthday   :date
#  phone      :string(255)
#  cellphone  :string(255)
#  email      :string(255)
#  address    :string(255)
#  occupation :string(255)
#  income     :float(24)
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ApplicationRecord
end
