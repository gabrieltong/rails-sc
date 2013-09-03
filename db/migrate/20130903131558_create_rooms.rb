class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :title
      t.boolean :projector
      t.boolean :sound
      t.boolean :mic

      t.timestamps
    end
  end
end
