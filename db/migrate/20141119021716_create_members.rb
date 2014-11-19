class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.boolean :isleader
      t.integer :role_id

      t.timestamps
    end
  end
end
