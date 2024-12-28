class CreateOrganizations < ActiveRecord::Migration[8.0]
  def change
    create_table :organizations do |t|
      t.integer :role

      t.timestamps
    end
  end
end
