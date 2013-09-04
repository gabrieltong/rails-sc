class AddRoomIdToKlassplans < ActiveRecord::Migration
  def change
    add_column :klassplans, :room_id, :integer
  end
end
