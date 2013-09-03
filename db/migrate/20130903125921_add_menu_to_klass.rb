class AddMenuToKlass < ActiveRecord::Migration
  def change
    add_column :klasses, :menu, :string
  end
end
