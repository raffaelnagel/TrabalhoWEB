class CreateTimestamps < ActiveRecord::Migration
  def change
    create_table :timestamps do |t|
      t.references :members, index: true
      t.references :projects, index: true
      t.integer :hours
      t.datetime :date

      t.timestamps
    end
  end
end
