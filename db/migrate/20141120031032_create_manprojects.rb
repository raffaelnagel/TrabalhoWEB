class CreateManprojects < ActiveRecord::Migration
  def change
    create_table :manprojects do |t|
      t.integer :idProject
      t.integer :idMember
      t.boolean :isLeader

      t.timestamps
    end
  end
end
