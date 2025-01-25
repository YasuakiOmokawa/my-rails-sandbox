class Supplier < ApplicationRecord
  has_one :account

  delegate :name, to: :account, prefix: true

  alias :a_name :account_name

  def identical_name
    "#{id}_#{name}"
  end

  def a_name2
    account.name
  end

  define_method(:a_name3, instance_method(:account_name))
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
