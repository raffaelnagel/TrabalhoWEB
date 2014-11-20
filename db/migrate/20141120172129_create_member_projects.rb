class CreateMemberProjects < ActiveRecord::Migration
  def change
    create_table :member_projects do |t|
      t.references :members, index: true
      t.references :projects, index: true

      t.timestamps
    end
  end
end
