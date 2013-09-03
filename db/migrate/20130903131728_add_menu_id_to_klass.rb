class AddMenuIdToKlass < ActiveRecord::Migration
  def change
    add_column :klasses, :menu_id, :integer
  end
end
