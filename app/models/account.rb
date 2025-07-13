class Account < ApplicationRecord
  validate :hoge_validate, on: :update

  def name
    "this is account name."
  end

  def has_license?
    args = [
      { service: "hoge", app: "fuga", license: "license-hoge-fuga2" },
      { service: "hoge", app: "piyo", license: nil }
    ]
    results = args.map do |arg|
      get_license(service: arg[:service], app: arg[:app]) == arg[:license]
    end
    results.any?
  end

  private

  def get_license(service:, app:)
    "license-#{service}-#{app}"
  end

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
