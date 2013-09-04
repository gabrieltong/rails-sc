class AddColumnsToPerson < ActiveRecord::Migration
  def change
    add_column :people, :grade, :integer
    add_column :people, :signup_openclass, :boolean
  end
end
