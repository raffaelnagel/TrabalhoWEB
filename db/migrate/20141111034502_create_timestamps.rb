class CreateTimestamps < ActiveRecord::Migration
  def change
    create_table :timestamps do |t|
      t.string :project
      t.integer :horas

      t.timestamps
    end
  end
end
