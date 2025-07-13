class Account < ApplicationRecord
  validate :hoge_validate, on: :update

  def name
    "this is account name."
  end

  def has_license?
    license_rules = [
      { service: "hoge", app: "fuga", license: "license-hoge-fuga2" },
      { service: "hoge", app: "piyo", license: "license-hoge-piyo" },
      { service: "hoge", app: "piyo", license: nil }
    ]
    Parallel.any?(license_rules, in_threads: 3) do |license_rule|
      get_license(service: license_rule[:service], app: license_rule[:app]) == license_rule[:license]
    end
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
