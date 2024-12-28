class CreateTests < ActiveRecord::Migration[8.0]
  def change
    create_table :tests do |t|
      t.integer :role

      t.timestamps
    end
  end
end
