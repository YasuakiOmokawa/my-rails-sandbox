class Supplier < ApplicationRecord
  has_one :account
end

# == Schema Information
#
# Table name: suppliers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
