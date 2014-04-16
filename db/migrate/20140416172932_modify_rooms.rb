class ModifyRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :user_id, :int
  end
end
