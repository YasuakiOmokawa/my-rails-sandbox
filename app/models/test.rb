# frozen_string_literal: true

class Test < ApplicationRecord
  enum :role, {
    member: 1,
    option: 2
  }

  # class << self
  #   alias_method :_org_roles, :roles

  #   def roles
  #     _org_roles.except(:option)
  #   end
  # end
end

# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  role       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
