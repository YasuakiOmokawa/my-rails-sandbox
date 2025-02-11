class Account < ApplicationRecord
  validate :hoge_validate, on: :update

  def name
    "this is account name."
  end

  private

  def hoge_validate
    puts account_number_was
    puts account_number
  end
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
