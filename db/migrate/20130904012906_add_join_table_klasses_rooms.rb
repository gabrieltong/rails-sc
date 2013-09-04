class AddJoinTableKlassesRooms < ActiveRecord::Migration
  def up
    create_table :klasses_rooms,:id=>false do |t|
      t.integer :klass_id
      t.integer :room_id
    end    
  end

  def down
    remove_table :klasses_rooms
  end
end
