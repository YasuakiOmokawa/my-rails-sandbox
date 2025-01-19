class Supplier < ApplicationRecord
  has_one :account

  def identical_name
    "#{id}_#{name}"
  end
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
