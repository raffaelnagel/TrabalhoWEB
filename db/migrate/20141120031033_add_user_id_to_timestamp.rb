class AddUserIdToTimestamp < ActiveRecord::Migration
  def change
    add_column :timestamps, :user_id, :integer
  end
end
