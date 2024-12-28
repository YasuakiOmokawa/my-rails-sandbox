# frozen_string_literal: true

class Test < ApplicationRecord
  enum role: {
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
