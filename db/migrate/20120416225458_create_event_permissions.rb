class CreateEventPermissions < ActiveRecord::Migration
  def change
    create_table :event_permissions do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :role

      t.timestamps
    end

    add_index :event_permissions, :user_id
    add_index :event_permissions, :event_id
  end
end
