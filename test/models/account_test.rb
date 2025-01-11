require "test_helper"

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: accounts
#
#  id             :integer          not null, primary key
#  supplier_id    :integer
#  account_number :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_accounts_on_supplier_id  (supplier_id)
#
