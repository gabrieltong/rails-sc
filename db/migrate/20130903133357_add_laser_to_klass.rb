class AddLaserToKlass < ActiveRecord::Migration
  def change
    add_column :klasses, :laser, :boolean
    add_column :rooms, :laser, :boolean
  end
end
