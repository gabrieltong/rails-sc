class AddNetworkToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :network, :boolean
  end
end
