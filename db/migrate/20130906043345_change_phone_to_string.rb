class ChangePhoneToString < ActiveRecord::Migration
  def up
    change_column :people , :phone,:bigint
  end

  def down
    change_column :people , :phone,:integer
  end
end
