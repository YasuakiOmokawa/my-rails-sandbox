class Organization < ApplicationRecord
  enum :role, {
    member: 0, # メンバー
    option: 1 # ラベル付けだけのためにあるロール（コードでは利用しない）
  }

  class << self 
    alias_method :_org_roles, :roles

    def roles
      _org_roles.except(:option)
    end
  end
end
