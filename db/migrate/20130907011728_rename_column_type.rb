class RenameColumnType < ActiveRecord::Migration
  def up
  	rename_column :scores,:type,:state
  end

  def down
  	rename_column :scores,:state,:type
  end
end
