class AddColumnTypeToKlassplan < ActiveRecord::Migration
  def change
    add_column :klassplans, :type, :string
  end
end
