class ChangeRoleNotNullToOrganization < ActiveRecord::Migration[8.0]
  def change
    change_column :organizations, :role, :integer, null: false, default: 0
  end
end
